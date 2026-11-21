// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '상자 맞춤 계산기';

  @override
  String get appDescription =>
      '90°로 정렬한 방향을 비교해 상자에 들어가는 동일한 직육면체 물품 수를 확인하세요.';

  @override
  String get languageTooltip => '언어 선택';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get appearanceTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '플랫';

  @override
  String get appearanceSoft => '소프트';

  @override
  String get unitLabel => '단위';

  @override
  String get millimetres => '밀리미터(mm)';

  @override
  String get centimetres => '센티미터(cm)';

  @override
  String get inches => '인치(in)';

  @override
  String get unitless => '단위 없음';

  @override
  String get boxDimensions => '상자 치수';

  @override
  String get itemDimensions => '물품 치수';

  @override
  String get boxLength => '상자 길이';

  @override
  String get boxWidth => '상자 너비';

  @override
  String get boxHeight => '상자 높이';

  @override
  String get itemLength => '물품 길이';

  @override
  String get itemWidth => '물품 너비';

  @override
  String get itemHeight => '물품 높이';

  @override
  String get calculateFit => '맞춤 계산';

  @override
  String get reset => '초기화';

  @override
  String get errorRequired => '값을 입력하세요';

  @override
  String get errorPositive => '양수를 입력하세요';

  @override
  String get errorNumber => '올바른 숫자를 입력하세요';

  @override
  String get errorFinite => '유한한 숫자를 입력하세요';

  @override
  String get errorPrecision => '소수점 이하 3자리까지만 입력하세요';

  @override
  String get errorLimit => '1,000,000,000 이하로 입력하세요';

  @override
  String get resultsTitle => '방향별 결과';

  @override
  String get bestFit => '최적 맞춤';

  @override
  String get orientation => '방향';

  @override
  String acrossLength(int count) {
    return '길이 방향: $count';
  }

  @override
  String acrossWidth(int count) {
    return '너비 방향: $count';
  }

  @override
  String layers(int count) {
    return '층수: $count';
  }

  @override
  String totalItems(int count) {
    return '총 물품 수: $count';
  }

  @override
  String unusedLength(String value) {
    return '남는 길이: $value';
  }

  @override
  String unusedWidth(String value) {
    return '남는 너비: $value';
  }

  @override
  String unusedHeight(String value) {
    return '남는 높이: $value';
  }

  @override
  String get nothingFits => '입력한 치수로는 아무것도 들어가지 않습니다';

  @override
  String get assumptionsTitle => '포장 전 확인';

  @override
  String get assumptions =>
      '사용 가능한 상자 내부 치수와 단단하고 동일한 직육면체 물품을 단순 정렬 격자로 배치한다고 가정합니다. 비스듬한 회전, 압축, 중첩, 칸막이, 완충재, 벽 두께, 하중 제한 또는 서로 다른 물품 크기는 고려하지 않습니다.';
}
