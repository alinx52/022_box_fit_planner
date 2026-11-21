// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'बॉक्स फ़िट योजनाकार';

  @override
  String get appDescription =>
      'देखें कि 90° पर संरेखित दिशाओं में एक जैसे आयताकार सामान के कितने टुकड़े बॉक्स में आते हैं।';

  @override
  String get languageTooltip => 'भाषा चुनें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get appearanceTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटेरियल';

  @override
  String get appearanceFlat => 'समतल';

  @override
  String get appearanceSoft => 'कोमल';

  @override
  String get unitLabel => 'इकाई';

  @override
  String get millimetres => 'मिलीमीटर (mm)';

  @override
  String get centimetres => 'सेंटीमीटर (cm)';

  @override
  String get inches => 'इंच (in)';

  @override
  String get unitless => 'बिना इकाई';

  @override
  String get boxDimensions => 'बॉक्स के माप';

  @override
  String get itemDimensions => 'सामान के माप';

  @override
  String get boxLength => 'बॉक्स की लंबाई';

  @override
  String get boxWidth => 'बॉक्स की चौड़ाई';

  @override
  String get boxHeight => 'बॉक्स की ऊँचाई';

  @override
  String get itemLength => 'सामान की लंबाई';

  @override
  String get itemWidth => 'सामान की चौड़ाई';

  @override
  String get itemHeight => 'सामान की ऊँचाई';

  @override
  String get calculateFit => 'क्षमता निकालें';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get errorRequired => 'मान दर्ज करें';

  @override
  String get errorPositive => 'धनात्मक संख्या दर्ज करें';

  @override
  String get errorNumber => 'मान्य संख्या दर्ज करें';

  @override
  String get errorFinite => 'सीमित संख्या दर्ज करें';

  @override
  String get errorPrecision => 'अधिकतम 3 दशमलव स्थान रखें';

  @override
  String get errorLimit => '1,000,000,000 या कम दर्ज करें';

  @override
  String get resultsTitle => 'दिशा के परिणाम';

  @override
  String get bestFit => 'सबसे अच्छा फ़िट';

  @override
  String get orientation => 'दिशा';

  @override
  String acrossLength(int count) {
    return 'लंबाई की ओर: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'चौड़ाई की ओर: $count';
  }

  @override
  String layers(int count) {
    return 'परतें: $count';
  }

  @override
  String totalItems(int count) {
    return 'कुल सामान: $count';
  }

  @override
  String unusedLength(String value) {
    return 'बची लंबाई: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'बची चौड़ाई: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'बची ऊँचाई: $value';
  }

  @override
  String get nothingFits => 'दर्ज मापों में कुछ भी फ़िट नहीं होता';

  @override
  String get assumptionsTitle => 'पैक करने से पहले';

  @override
  String get assumptions =>
      'बॉक्स के उपयोग योग्य अंदरूनी माप और सरल संरेखित ग्रिड में रखे एक जैसे कठोर आयताकार सामान माने जाते हैं। तिरछा घुमाव, दबाव, एक-दूसरे में रखना, विभाजक, पैडिंग, दीवार की मोटाई, भार सीमा या अलग-अलग आकार शामिल नहीं हैं।';
}
