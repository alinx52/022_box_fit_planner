import 'package:box_fit_planner/app.dart';
import 'package:box_fit_planner/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();
  }

  Future<void> enterDimensions(WidgetTester tester, List<String> values) async {
    const keys = [
      'boxLength',
      'boxWidth',
      'boxHeight',
      'itemLength',
      'itemWidth',
      'itemHeight',
    ];
    for (var index = 0; index < keys.length; index++) {
      await tester.enterText(find.byKey(ValueKey(keys[index])), values[index]);
    }
  }

  Future<void> calculate(WidgetTester tester) async {
    final button = find.byKey(const ValueKey('calculate-fit'));
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pump();
  }

  Future<void> chooseLocale(WidgetTester tester, String tag) async {
    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    final option = find.byKey(ValueKey('locale-$tag'));
    await tester.ensureVisible(option);
    await tester.tap(option);
    await tester.pumpAndSettle();
  }

  testWidgets('shows an English-first compact calculator', (tester) async {
    await pumpApp(tester);

    expect(find.text('Box Fit Planner'), findsOneWidget);
    expect(find.text('Box dimensions'), findsOneWidget);
    expect(find.text('Item dimensions'), findsOneWidget);
    expect(find.text('Calculate fit'), findsOneWidget);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('en'),
    );
  });

  testWidgets('calculates and ranks the specified best orientation', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterDimensions(tester, ['100', '60', '40', '30', '20', '10']);
    await calculate(tester);

    expect(find.text('Best fit'), findsOneWidget);
    expect(find.text('20 × 30 × 10'), findsOneWidget);
    expect(find.text('Across length: 5'), findsWidgets);
    expect(find.text('Across width: 2'), findsWidgets);
    expect(find.text('Layers: 4'), findsWidgets);
    expect(find.text('Total items: 40'), findsWidgets);
    expect(find.text('Unused length: 0 cm'), findsWidgets);
    expect(find.text('Unused width: 0 cm'), findsWidgets);
    expect(find.text('Unused height: 0 cm'), findsWidgets);
  });

  testWidgets('equal item dimensions produce one orientation and one item', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterDimensions(tester, ['10', '10', '10', '10', '10', '10']);
    await calculate(tester);

    expect(find.text('10 × 10 × 10'), findsOneWidget);
    expect(find.text('Total items: 1'), findsOneWidget);
    expect(find.text('Orientation'), findsNothing);
  });

  testWidgets('oversized items show the localized nothing-fits state', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterDimensions(tester, ['1', '1', '1', '2', '2', '2']);
    await calculate(tester);

    expect(
      find.text('Nothing fits with the entered dimensions'),
      findsOneWidget,
    );
    expect(find.text('Total items: 0'), findsOneWidget);
  });

  testWidgets('invalid values are localized and preserve the valid result', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterDimensions(tester, ['100', '60', '40', '30', '20', '10']);
    await calculate(tester);
    expect(find.text('Total items: 40'), findsWidgets);

    final input = find.byKey(const ValueKey('boxLength'));
    final cases = <(String, String)>[
      ('', 'Enter a value'),
      ('0', 'Enter a positive number'),
      ('-1', 'Enter a positive number'),
      ('abc', 'Enter a valid number'),
      ('Infinity', 'Enter a finite number'),
      ('1.2345', 'Use no more than 3 decimal places'),
      ('1000000001', 'Enter 1,000,000,000 or less'),
    ];
    final scrollableFinder = find.byType(Scrollable).first;
    for (final (value, message) in cases) {
      await tester.scrollUntilVisible(input, -300, scrollable: scrollableFinder);
      await tester.enterText(input, value);
      await calculate(tester);
      await tester.scrollUntilVisible(input, -300, scrollable: scrollableFinder);
      expect(find.text(message), findsOneWidget);
      final preservedResult = find.byKey(const ValueKey('best-orientation'));
      await tester.scrollUntilVisible(
        preservedResult,
        300,
        scrollable: scrollableFinder,
      );
      expect(find.text('20 × 30 × 10'), findsOneWidget);
    }
  });

  testWidgets('Korean and Arabic switch immediately without losing results', (
    tester,
  ) async {
    await pumpApp(tester);
    await enterDimensions(tester, ['100', '60', '40', '30', '20', '10']);
    await calculate(tester);

    await chooseLocale(tester, 'ko');
    expect(find.text('상자 치수'), findsOneWidget);
    expect(find.text('총 물품 수: 40'), findsWidgets);

    await chooseLocale(tester, 'ar');
    expect(find.text('أبعاد الصندوق'), findsOneWidget);
    expect(find.text('إجمالي العناصر: 40'), findsWidgets);
    expect(
      Directionality.of(tester.element(find.byType(HomePage))),
      TextDirection.rtl,
    );
    expect(tester.takeException(), isNull);

    final boxLength = tester.widget<TextField>(
      find.byKey(const ValueKey('boxLength')),
    );
    expect(boxLength.controller!.text, '100');
  });
}
