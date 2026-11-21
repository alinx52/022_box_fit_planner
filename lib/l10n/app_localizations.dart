import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Box Fit Planner'**
  String get appTitle;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'See how many identical rectangular items fit in a box using 90° aligned orientations.'**
  String get appDescription;

  /// No description provided for @languageTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get languageTooltip;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @appearanceTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose appearance'**
  String get appearanceTooltip;

  /// No description provided for @appearanceMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get appearanceMaterial;

  /// No description provided for @appearanceFlat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get appearanceFlat;

  /// No description provided for @appearanceSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get appearanceSoft;

  /// No description provided for @unitLabel.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unitLabel;

  /// No description provided for @millimetres.
  ///
  /// In en, this message translates to:
  /// **'Millimetres (mm)'**
  String get millimetres;

  /// No description provided for @centimetres.
  ///
  /// In en, this message translates to:
  /// **'Centimetres (cm)'**
  String get centimetres;

  /// No description provided for @inches.
  ///
  /// In en, this message translates to:
  /// **'Inches (in)'**
  String get inches;

  /// No description provided for @unitless.
  ///
  /// In en, this message translates to:
  /// **'No unit'**
  String get unitless;

  /// No description provided for @boxDimensions.
  ///
  /// In en, this message translates to:
  /// **'Box dimensions'**
  String get boxDimensions;

  /// No description provided for @itemDimensions.
  ///
  /// In en, this message translates to:
  /// **'Item dimensions'**
  String get itemDimensions;

  /// No description provided for @boxLength.
  ///
  /// In en, this message translates to:
  /// **'Box length'**
  String get boxLength;

  /// No description provided for @boxWidth.
  ///
  /// In en, this message translates to:
  /// **'Box width'**
  String get boxWidth;

  /// No description provided for @boxHeight.
  ///
  /// In en, this message translates to:
  /// **'Box height'**
  String get boxHeight;

  /// No description provided for @itemLength.
  ///
  /// In en, this message translates to:
  /// **'Item length'**
  String get itemLength;

  /// No description provided for @itemWidth.
  ///
  /// In en, this message translates to:
  /// **'Item width'**
  String get itemWidth;

  /// No description provided for @itemHeight.
  ///
  /// In en, this message translates to:
  /// **'Item height'**
  String get itemHeight;

  /// No description provided for @calculateFit.
  ///
  /// In en, this message translates to:
  /// **'Calculate fit'**
  String get calculateFit;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @errorRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter a value'**
  String get errorRequired;

  /// No description provided for @errorPositive.
  ///
  /// In en, this message translates to:
  /// **'Enter a positive number'**
  String get errorPositive;

  /// No description provided for @errorNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number'**
  String get errorNumber;

  /// No description provided for @errorFinite.
  ///
  /// In en, this message translates to:
  /// **'Enter a finite number'**
  String get errorFinite;

  /// No description provided for @errorPrecision.
  ///
  /// In en, this message translates to:
  /// **'Use no more than 3 decimal places'**
  String get errorPrecision;

  /// No description provided for @errorLimit.
  ///
  /// In en, this message translates to:
  /// **'Enter 1,000,000,000 or less'**
  String get errorLimit;

  /// No description provided for @resultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Orientation results'**
  String get resultsTitle;

  /// No description provided for @bestFit.
  ///
  /// In en, this message translates to:
  /// **'Best fit'**
  String get bestFit;

  /// No description provided for @orientation.
  ///
  /// In en, this message translates to:
  /// **'Orientation'**
  String get orientation;

  /// No description provided for @acrossLength.
  ///
  /// In en, this message translates to:
  /// **'Across length: {count}'**
  String acrossLength(int count);

  /// No description provided for @acrossWidth.
  ///
  /// In en, this message translates to:
  /// **'Across width: {count}'**
  String acrossWidth(int count);

  /// No description provided for @layers.
  ///
  /// In en, this message translates to:
  /// **'Layers: {count}'**
  String layers(int count);

  /// No description provided for @totalItems.
  ///
  /// In en, this message translates to:
  /// **'Total items: {count}'**
  String totalItems(int count);

  /// No description provided for @unusedLength.
  ///
  /// In en, this message translates to:
  /// **'Unused length: {value}'**
  String unusedLength(String value);

  /// No description provided for @unusedWidth.
  ///
  /// In en, this message translates to:
  /// **'Unused width: {value}'**
  String unusedWidth(String value);

  /// No description provided for @unusedHeight.
  ///
  /// In en, this message translates to:
  /// **'Unused height: {value}'**
  String unusedHeight(String value);

  /// No description provided for @nothingFits.
  ///
  /// In en, this message translates to:
  /// **'Nothing fits with the entered dimensions'**
  String get nothingFits;

  /// No description provided for @assumptionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Before you pack'**
  String get assumptionsTitle;

  /// No description provided for @assumptions.
  ///
  /// In en, this message translates to:
  /// **'Uses usable internal box dimensions and rigid, identical rectangular items in a simple aligned grid. It does not allow angled rotation, compression, nesting, dividers, padding, wall thickness, load limits, or mixed item sizes.'**
  String get assumptions;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
