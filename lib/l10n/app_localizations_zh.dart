// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '装箱规划器';

  @override
  String get appDescription => '比较所有 90° 对齐方向，查看箱中可放入多少个相同长方体物品。';

  @override
  String get languageTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get unitLabel => '单位';

  @override
  String get millimetres => '毫米 (mm)';

  @override
  String get centimetres => '厘米 (cm)';

  @override
  String get inches => '英寸 (in)';

  @override
  String get unitless => '无单位';

  @override
  String get boxDimensions => '箱子尺寸';

  @override
  String get itemDimensions => '物品尺寸';

  @override
  String get boxLength => '箱子长度';

  @override
  String get boxWidth => '箱子宽度';

  @override
  String get boxHeight => '箱子高度';

  @override
  String get itemLength => '物品长度';

  @override
  String get itemWidth => '物品宽度';

  @override
  String get itemHeight => '物品高度';

  @override
  String get calculateFit => '计算装入数量';

  @override
  String get reset => '重置';

  @override
  String get errorRequired => '请输入数值';

  @override
  String get errorPositive => '请输入正数';

  @override
  String get errorNumber => '请输入有效数字';

  @override
  String get errorFinite => '请输入有限数字';

  @override
  String get errorPrecision => '小数位不得超过 3 位';

  @override
  String get errorLimit => '请输入不超过 1,000,000,000 的数值';

  @override
  String get resultsTitle => '方向结果';

  @override
  String get bestFit => '最佳方案';

  @override
  String get orientation => '方向';

  @override
  String acrossLength(int count) {
    return '沿长度: $count';
  }

  @override
  String acrossWidth(int count) {
    return '沿宽度: $count';
  }

  @override
  String layers(int count) {
    return '层数: $count';
  }

  @override
  String totalItems(int count) {
    return '物品总数: $count';
  }

  @override
  String unusedLength(String value) {
    return '剩余长度: $value';
  }

  @override
  String unusedWidth(String value) {
    return '剩余宽度: $value';
  }

  @override
  String unusedHeight(String value) {
    return '剩余高度: $value';
  }

  @override
  String get nothingFits => '按输入尺寸无法放入任何物品';

  @override
  String get assumptionsTitle => '装箱前须知';

  @override
  String get assumptions =>
      '使用箱子的可用内部尺寸，并假定相同的刚性长方体物品按简单对齐网格摆放。不考虑斜向旋转、压缩、套叠、隔板、填充物、壁厚、承重限制或不同尺寸的物品。';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => '装箱规划器';

  @override
  String get appDescription => '比较所有 90° 对齐方向，查看箱中可放入多少个相同长方体物品。';

  @override
  String get languageTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get unitLabel => '单位';

  @override
  String get millimetres => '毫米 (mm)';

  @override
  String get centimetres => '厘米 (cm)';

  @override
  String get inches => '英寸 (in)';

  @override
  String get unitless => '无单位';

  @override
  String get boxDimensions => '箱子尺寸';

  @override
  String get itemDimensions => '物品尺寸';

  @override
  String get boxLength => '箱子长度';

  @override
  String get boxWidth => '箱子宽度';

  @override
  String get boxHeight => '箱子高度';

  @override
  String get itemLength => '物品长度';

  @override
  String get itemWidth => '物品宽度';

  @override
  String get itemHeight => '物品高度';

  @override
  String get calculateFit => '计算装入数量';

  @override
  String get reset => '重置';

  @override
  String get errorRequired => '请输入数值';

  @override
  String get errorPositive => '请输入正数';

  @override
  String get errorNumber => '请输入有效数字';

  @override
  String get errorFinite => '请输入有限数字';

  @override
  String get errorPrecision => '小数位不得超过 3 位';

  @override
  String get errorLimit => '请输入不超过 1,000,000,000 的数值';

  @override
  String get resultsTitle => '方向结果';

  @override
  String get bestFit => '最佳方案';

  @override
  String get orientation => '方向';

  @override
  String acrossLength(int count) {
    return '沿长度: $count';
  }

  @override
  String acrossWidth(int count) {
    return '沿宽度: $count';
  }

  @override
  String layers(int count) {
    return '层数: $count';
  }

  @override
  String totalItems(int count) {
    return '物品总数: $count';
  }

  @override
  String unusedLength(String value) {
    return '剩余长度: $value';
  }

  @override
  String unusedWidth(String value) {
    return '剩余宽度: $value';
  }

  @override
  String unusedHeight(String value) {
    return '剩余高度: $value';
  }

  @override
  String get nothingFits => '按输入尺寸无法放入任何物品';

  @override
  String get assumptionsTitle => '装箱前须知';

  @override
  String get assumptions =>
      '使用箱子的可用内部尺寸，并假定相同的刚性长方体物品按简单对齐网格摆放。不考虑斜向旋转、压缩、套叠、隔板、填充物、壁厚、承重限制或不同尺寸的物品。';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '裝箱規劃器';

  @override
  String get appDescription => '比較所有 90° 對齊方向，查看箱中可放入多少個相同長方體物品。';

  @override
  String get languageTooltip => '選擇語言';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get appearanceTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get unitLabel => '單位';

  @override
  String get millimetres => '毫米 (mm)';

  @override
  String get centimetres => '公分 (cm)';

  @override
  String get inches => '英吋 (in)';

  @override
  String get unitless => '無單位';

  @override
  String get boxDimensions => '箱子尺寸';

  @override
  String get itemDimensions => '物品尺寸';

  @override
  String get boxLength => '箱子長度';

  @override
  String get boxWidth => '箱子寬度';

  @override
  String get boxHeight => '箱子高度';

  @override
  String get itemLength => '物品長度';

  @override
  String get itemWidth => '物品寬度';

  @override
  String get itemHeight => '物品高度';

  @override
  String get calculateFit => '計算裝入數量';

  @override
  String get reset => '重設';

  @override
  String get errorRequired => '請輸入數值';

  @override
  String get errorPositive => '請輸入正數';

  @override
  String get errorNumber => '請輸入有效數字';

  @override
  String get errorFinite => '請輸入有限數字';

  @override
  String get errorPrecision => '小數位不得超過 3 位';

  @override
  String get errorLimit => '請輸入不超過 1,000,000,000 的數值';

  @override
  String get resultsTitle => '方向結果';

  @override
  String get bestFit => '最佳方案';

  @override
  String get orientation => '方向';

  @override
  String acrossLength(int count) {
    return '沿長度: $count';
  }

  @override
  String acrossWidth(int count) {
    return '沿寬度: $count';
  }

  @override
  String layers(int count) {
    return '層數: $count';
  }

  @override
  String totalItems(int count) {
    return '物品總數: $count';
  }

  @override
  String unusedLength(String value) {
    return '剩餘長度: $value';
  }

  @override
  String unusedWidth(String value) {
    return '剩餘寬度: $value';
  }

  @override
  String unusedHeight(String value) {
    return '剩餘高度: $value';
  }

  @override
  String get nothingFits => '依輸入尺寸無法放入任何物品';

  @override
  String get assumptionsTitle => '裝箱前須知';

  @override
  String get assumptions =>
      '使用箱子的可用內部尺寸，並假定相同的剛性長方體物品按簡單對齊網格擺放。不考慮斜向旋轉、壓縮、套疊、隔板、填充物、壁厚、承重限制或不同尺寸的物品。';
}
