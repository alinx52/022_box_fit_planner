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

  @override
  String get helpTooltip => '도움말 및 안내';

  @override
  String get helpTitle => '상자 적재 플래너 안내';

  @override
  String get helpProblemSolvedTitle => '해결하는 문제';

  @override
  String get helpProblemSolvedContent =>
      '직육면체 외부 상자에 동일한 크기의 물품을 직교 회전 방향별로 채울 때 들어가는 최대 개수와 행/열/높이 배열 및 남는 여유 공간을 오프라인으로 계산합니다.';

  @override
  String get helpHowToUseTitle => '사용 방법';

  @override
  String get helpHowToUseContent =>
      '외부 상자의 치수(가로, 세로, 높이)와 물품 1개의 치수(가로, 세로, 높이)를 입력한 뒤 적재 계산 버튼을 누릅니다.';

  @override
  String get helpReadingResultsTitle => '결과 확인';

  @override
  String get helpReadingResultsContent =>
      '총 수납 가능 개수, 축별 배치 수량(가로 × 세로 × 높이), 부피 활용률(%) 및 상자 내 잔여 여유 공간 치수를 표시합니다.';

  @override
  String get helpExampleTitle => '대표 예시';

  @override
  String get helpExampleContent =>
      '상자: 30 x 20 x 10 cm | 물품: 10 x 10 x 5 cm\n결과: 가로 3개 x 세로 2개 x 높이 2개 = 총 12개 수납 (부피 활용률 100%, 여유 0 cm).';

  @override
  String get helpLimitsTitle => '검증 및 제한사항';

  @override
  String get helpLimitsContent =>
      '단순 직교 기하학적 패킹 계산기입니다. 하중 한계, 파손 위험, 완충재 공간, 비정형 혼합 회전 배치를 보증하지 않습니다.';

  @override
  String get helpDataAndPrivacyTitle => '로컬 데이터 및 광고';

  @override
  String get helpDataAndPrivacyContent =>
      '모든 치수 연산은 인터넷 연결 없이 기기 내부에서만 이루어집니다. 화면 하단에 Google AdMob 표준 배너 광고가 표시됩니다.';
}
