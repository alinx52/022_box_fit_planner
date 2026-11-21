import 'package:box_fit_planner/fit_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'uses fixed evaluation order for ties and skips duplicate permutations',
    () {
      final tiedResults = calculateFits(
        const Dimensions(100, 60, 40),
        const Dimensions(30, 20, 10),
      );
      final tied = tiedResults.where((result) => result.total == 36).toList();
      expect(
        tied.map((result) => result.evaluationIndex),
        orderedEquals([0, 1]),
      );

      final duplicateResults = calculateFits(
        const Dimensions(100, 60, 40),
        const Dimensions(30, 20, 20),
      );
      expect(duplicateResults, hasLength(3));
      expect(
        duplicateResults.map((result) => result.orientation.identity).toSet(),
        hasLength(3),
      );
    },
  );

  test('equal dimensions create one distinct orientation', () {
    final results = calculateFits(
      const Dimensions(10, 10, 10),
      const Dimensions(10, 10, 10),
    );
    expect(results, hasLength(1));
    expect(results.single.total, 1);
  });

  test('decimal floor division is exact to the supported precision', () {
    final results = calculateFits(
      const Dimensions(0.3, 0.3, 0.3),
      const Dimensions(0.1, 0.1, 0.1),
    );
    expect(results.single.total, 27);
    expect(results.single.unusedLength, 0);
  });
}
