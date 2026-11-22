// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '箱詰め計画';

  @override
  String get appDescription => '90°にそろえた向きを比較し、同じ直方体の品物が箱にいくつ入るか確認します。';

  @override
  String get languageTooltip => '言語を選択';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appearanceTooltip => '表示スタイルを選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get unitLabel => '単位';

  @override
  String get millimetres => 'ミリメートル (mm)';

  @override
  String get centimetres => 'センチメートル (cm)';

  @override
  String get inches => 'インチ (in)';

  @override
  String get unitless => '単位なし';

  @override
  String get boxDimensions => '箱の寸法';

  @override
  String get itemDimensions => '品物の寸法';

  @override
  String get boxLength => '箱の長さ';

  @override
  String get boxWidth => '箱の幅';

  @override
  String get boxHeight => '箱の高さ';

  @override
  String get itemLength => '品物の長さ';

  @override
  String get itemWidth => '品物の幅';

  @override
  String get itemHeight => '品物の高さ';

  @override
  String get calculateFit => '収納数を計算';

  @override
  String get reset => 'リセット';

  @override
  String get errorRequired => '値を入力してください';

  @override
  String get errorPositive => '正の数を入力してください';

  @override
  String get errorNumber => '有効な数値を入力してください';

  @override
  String get errorFinite => '有限の数値を入力してください';

  @override
  String get errorPrecision => '小数点以下3桁以内で入力してください';

  @override
  String get errorLimit => '1,000,000,000以下で入力してください';

  @override
  String get resultsTitle => '向き別の結果';

  @override
  String get bestFit => '最適な向き';

  @override
  String get orientation => '向き';

  @override
  String acrossLength(int count) {
    return '長さ方向: $count';
  }

  @override
  String acrossWidth(int count) {
    return '幅方向: $count';
  }

  @override
  String layers(int count) {
    return '段数: $count';
  }

  @override
  String totalItems(int count) {
    return '品物の合計: $count';
  }

  @override
  String unusedLength(String value) {
    return '余る長さ: $value';
  }

  @override
  String unusedWidth(String value) {
    return '余る幅: $value';
  }

  @override
  String unusedHeight(String value) {
    return '余る高さ: $value';
  }

  @override
  String get nothingFits => '入力した寸法では何も入りません';

  @override
  String get assumptionsTitle => '梱包前の確認';

  @override
  String get assumptions =>
      '使用可能な箱の内寸と、硬く同一の直方体品を単純な整列格子で配置する前提です。斜めの回転、圧縮、入れ子、仕切り、緩衝材、壁厚、荷重制限、異なる品物サイズは考慮しません。';

  @override
  String get helpTooltip => 'ヘルプと使い方';

  @override
  String get helpTitle => '箱詰め・収納プランナーガイド';

  @override
  String get helpProblemSolvedTitle => '解決する課題';

  @override
  String get helpProblemSolvedContent =>
      '直方体の外箱に同じ大きさの物品を詰める際、向き（回転）ごとの最大収納数、縦・横・高さの配置数、および余り空間を計算します。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '外箱の寸法（縦、横、高さ）と物品1つの寸法（縦、横、高さ）を入力し、「収納計算」をタップします。';

  @override
  String get helpReadingResultsTitle => '結果の見方';

  @override
  String get helpReadingResultsContent =>
      '総収納数、各軸ごとの配置数（縦 × 横 × 高さ）、容積利用率（%）、および箱内の余剰空間が表示されます。';

  @override
  String get helpExampleTitle => '具体例';

  @override
  String get helpExampleContent =>
      '箱: 30 x 20 x 10 cm | 物品: 10 x 10 x 5 cm\n結果: 縦3個 x 横2個 x 高さ2個 = 合計12個収納 (容積利用率 100%、余剰 0 cm)。';

  @override
  String get helpLimitsTitle => '検証と制限事項';

  @override
  String get helpLimitsContent =>
      '直交配置に基づく幾何学的計算です。耐荷重制限、緩衝材の厚み、変形、不規則な混載配置を保証するものではありません。';

  @override
  String get helpDataAndPrivacyTitle => 'ローカルデータと広告';

  @override
  String get helpDataAndPrivacyContent =>
      'すべての計算はインターネット通信なしで端末内で行われます。画面下部に標準AdMobバナーが表示されます。';
}
