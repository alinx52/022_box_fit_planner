// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Box Fit Planner';

  @override
  String get appDescription =>
      'See how many identical rectangular items fit in a box using 90° aligned orientations.';

  @override
  String get languageTooltip => 'Choose language';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get appearanceTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get unitLabel => 'Unit';

  @override
  String get millimetres => 'Millimetres (mm)';

  @override
  String get centimetres => 'Centimetres (cm)';

  @override
  String get inches => 'Inches (in)';

  @override
  String get unitless => 'No unit';

  @override
  String get boxDimensions => 'Box dimensions';

  @override
  String get itemDimensions => 'Item dimensions';

  @override
  String get boxLength => 'Box length';

  @override
  String get boxWidth => 'Box width';

  @override
  String get boxHeight => 'Box height';

  @override
  String get itemLength => 'Item length';

  @override
  String get itemWidth => 'Item width';

  @override
  String get itemHeight => 'Item height';

  @override
  String get calculateFit => 'Calculate fit';

  @override
  String get reset => 'Reset';

  @override
  String get errorRequired => 'Enter a value';

  @override
  String get errorPositive => 'Enter a positive number';

  @override
  String get errorNumber => 'Enter a valid number';

  @override
  String get errorFinite => 'Enter a finite number';

  @override
  String get errorPrecision => 'Use no more than 3 decimal places';

  @override
  String get errorLimit => 'Enter 1,000,000,000 or less';

  @override
  String get resultsTitle => 'Orientation results';

  @override
  String get bestFit => 'Best fit';

  @override
  String get orientation => 'Orientation';

  @override
  String acrossLength(int count) {
    return 'Across length: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Across width: $count';
  }

  @override
  String layers(int count) {
    return 'Layers: $count';
  }

  @override
  String totalItems(int count) {
    return 'Total items: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Unused length: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Unused width: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Unused height: $value';
  }

  @override
  String get nothingFits => 'Nothing fits with the entered dimensions';

  @override
  String get assumptionsTitle => 'Before you pack';

  @override
  String get assumptions =>
      'Uses usable internal box dimensions and rigid, identical rectangular items in a simple aligned grid. It does not allow angled rotation, compression, nesting, dividers, padding, wall thickness, load limits, or mixed item sizes.';

  @override
  String get helpTooltip => 'Help & Guide';

  @override
  String get helpTitle => 'Box Fit Planner Guide';

  @override
  String get helpProblemSolvedTitle => 'Problem Solved';

  @override
  String get helpProblemSolvedContent =>
      'Determines how many identical rectangular items fit into an outer rectangular container across orthogonal orientations and calculates leftover volume offline.';

  @override
  String get helpHowToUseTitle => 'How to Use';

  @override
  String get helpHowToUseContent =>
      'Enter outer box dimensions (length, width, height) and single item dimensions (length, width, height), then tap Calculate fit.';

  @override
  String get helpReadingResultsTitle => 'Reading Results';

  @override
  String get helpReadingResultsContent =>
      'Displays total items accommodated, items per axis (length × width × height), volume utilization percentage (%), and leftover container space.';

  @override
  String get helpExampleTitle => 'Example';

  @override
  String get helpExampleContent =>
      'Box: 30 x 20 x 10 cm | Item: 10 x 10 x 5 cm\nResult: 3 length x 2 width x 2 height = 12 items total (100% volume used, 0 cm leftover).';

  @override
  String get helpLimitsTitle => 'Validation & Limitations';

  @override
  String get helpLimitsContent =>
      'Geometric orthogonal packing calculation. Does not account for weight limits, fragility, deformation, padding, or complex mixed-orientation nesting.';

  @override
  String get helpDataAndPrivacyTitle => 'Local Data & Ads';

  @override
  String get helpDataAndPrivacyContent =>
      'All dimensions are computed strictly on-device without internet transmission. A standard AdMob banner is displayed below.';
}
