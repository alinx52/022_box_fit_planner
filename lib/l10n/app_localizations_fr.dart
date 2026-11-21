// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Planificateur de boîte';

  @override
  String get appDescription =>
      'Comparez les orientations alignées à 90° pour savoir combien d’articles rectangulaires identiques entrent dans une boîte.';

  @override
  String get languageTooltip => 'Choisir la langue';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get appearanceTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'Matériel';

  @override
  String get appearanceFlat => 'Plat';

  @override
  String get appearanceSoft => 'Doux';

  @override
  String get unitLabel => 'Unité';

  @override
  String get millimetres => 'Millimètres (mm)';

  @override
  String get centimetres => 'Centimètres (cm)';

  @override
  String get inches => 'Pouces (in)';

  @override
  String get unitless => 'Sans unité';

  @override
  String get boxDimensions => 'Dimensions de la boîte';

  @override
  String get itemDimensions => 'Dimensions de l’article';

  @override
  String get boxLength => 'Longueur de la boîte';

  @override
  String get boxWidth => 'Largeur de la boîte';

  @override
  String get boxHeight => 'Hauteur de la boîte';

  @override
  String get itemLength => 'Longueur de l’article';

  @override
  String get itemWidth => 'Largeur de l’article';

  @override
  String get itemHeight => 'Hauteur de l’article';

  @override
  String get calculateFit => 'Calculer la capacité';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get errorRequired => 'Saisissez une valeur';

  @override
  String get errorPositive => 'Saisissez un nombre positif';

  @override
  String get errorNumber => 'Saisissez un nombre valide';

  @override
  String get errorFinite => 'Saisissez un nombre fini';

  @override
  String get errorPrecision => 'Utilisez au maximum 3 décimales';

  @override
  String get errorLimit => 'Saisissez au plus 1 000 000 000';

  @override
  String get resultsTitle => 'Résultats par orientation';

  @override
  String get bestFit => 'Meilleur ajustement';

  @override
  String get orientation => 'Orientation';

  @override
  String acrossLength(int count) {
    return 'Sur la longueur : $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Sur la largeur : $count';
  }

  @override
  String layers(int count) {
    return 'Couches : $count';
  }

  @override
  String totalItems(int count) {
    return 'Total d’articles : $count';
  }

  @override
  String unusedLength(String value) {
    return 'Longueur inutilisée : $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Largeur inutilisée : $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Hauteur inutilisée : $value';
  }

  @override
  String get nothingFits => 'Rien ne tient avec les dimensions saisies';

  @override
  String get assumptionsTitle => 'Avant l’emballage';

  @override
  String get assumptions =>
      'Utilise les dimensions intérieures utiles et des articles rectangulaires rigides identiques disposés sur une grille alignée simple. La rotation oblique, la compression, l’emboîtement, les séparateurs, le rembourrage, l’épaisseur des parois, les limites de charge et les tailles mixtes ne sont pas pris en compte.';
}
