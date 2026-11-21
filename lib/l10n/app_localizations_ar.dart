// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مخطط ملاءمة الصندوق';

  @override
  String get appDescription =>
      'قارن الاتجاهات المحاذية بزاوية 90° لمعرفة عدد العناصر المستطيلة المتطابقة التي تتسع لها العلبة.';

  @override
  String get languageTooltip => 'اختيار اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get appearanceTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get unitLabel => 'الوحدة';

  @override
  String get millimetres => 'ملليمتر (mm)';

  @override
  String get centimetres => 'سنتيمتر (cm)';

  @override
  String get inches => 'بوصة (in)';

  @override
  String get unitless => 'بلا وحدة';

  @override
  String get boxDimensions => 'أبعاد الصندوق';

  @override
  String get itemDimensions => 'أبعاد العنصر';

  @override
  String get boxLength => 'طول الصندوق';

  @override
  String get boxWidth => 'عرض الصندوق';

  @override
  String get boxHeight => 'ارتفاع الصندوق';

  @override
  String get itemLength => 'طول العنصر';

  @override
  String get itemWidth => 'عرض العنصر';

  @override
  String get itemHeight => 'ارتفاع العنصر';

  @override
  String get calculateFit => 'حساب السعة';

  @override
  String get reset => 'إعادة الضبط';

  @override
  String get errorRequired => 'أدخل قيمة';

  @override
  String get errorPositive => 'أدخل رقمًا موجبًا';

  @override
  String get errorNumber => 'أدخل رقمًا صالحًا';

  @override
  String get errorFinite => 'أدخل رقمًا محدودًا';

  @override
  String get errorPrecision => 'استخدم 3 منازل عشرية كحد أقصى';

  @override
  String get errorLimit => 'أدخل 1,000,000,000 أو أقل';

  @override
  String get resultsTitle => 'نتائج الاتجاهات';

  @override
  String get bestFit => 'أفضل ملاءمة';

  @override
  String get orientation => 'الاتجاه';

  @override
  String acrossLength(int count) {
    return 'على امتداد الطول: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'على امتداد العرض: $count';
  }

  @override
  String layers(int count) {
    return 'الطبقات: $count';
  }

  @override
  String totalItems(int count) {
    return 'إجمالي العناصر: $count';
  }

  @override
  String unusedLength(String value) {
    return 'الطول غير المستخدم: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'العرض غير المستخدم: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'الارتفاع غير المستخدم: $value';
  }

  @override
  String get nothingFits => 'لا يتسع أي عنصر ضمن الأبعاد المدخلة';

  @override
  String get assumptionsTitle => 'قبل التعبئة';

  @override
  String get assumptions =>
      'يستخدم الأبعاد الداخلية القابلة للاستعمال وعناصر مستطيلة صلبة ومتطابقة ضمن شبكة محاذية بسيطة. لا يشمل الدوران المائل أو الضغط أو التداخل أو الفواصل أو الحشو أو سماكة الجدار أو حدود الحمولة أو أحجام العناصر المختلفة.';
}
