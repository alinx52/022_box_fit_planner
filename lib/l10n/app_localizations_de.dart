// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Kartongrößen-Planer';

  @override
  String get appDescription =>
      'Vergleicht alle rechtwinklig ausgerichteten Lagen und zeigt, wie viele gleiche quaderförmige Gegenstände in einen Karton passen.';

  @override
  String get languageTooltip => 'Sprache wählen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get appearanceTooltip => 'Darstellung wählen';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Weich';

  @override
  String get unitLabel => 'Einheit';

  @override
  String get millimetres => 'Millimeter (mm)';

  @override
  String get centimetres => 'Zentimeter (cm)';

  @override
  String get inches => 'Zoll (in)';

  @override
  String get unitless => 'Ohne Einheit';

  @override
  String get boxDimensions => 'Kartonmaße';

  @override
  String get itemDimensions => 'Gegenstandsmaße';

  @override
  String get boxLength => 'Kartonlänge';

  @override
  String get boxWidth => 'Kartonbreite';

  @override
  String get boxHeight => 'Kartonhöhe';

  @override
  String get itemLength => 'Gegenstandslänge';

  @override
  String get itemWidth => 'Gegenstandsbreite';

  @override
  String get itemHeight => 'Gegenstandshöhe';

  @override
  String get calculateFit => 'Passform berechnen';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get errorRequired => 'Wert eingeben';

  @override
  String get errorPositive => 'Positive Zahl eingeben';

  @override
  String get errorNumber => 'Gültige Zahl eingeben';

  @override
  String get errorFinite => 'Endliche Zahl eingeben';

  @override
  String get errorPrecision => 'Höchstens 3 Dezimalstellen verwenden';

  @override
  String get errorLimit => 'Höchstens 1.000.000.000 eingeben';

  @override
  String get resultsTitle => 'Ergebnisse nach Ausrichtung';

  @override
  String get bestFit => 'Beste Passform';

  @override
  String get orientation => 'Ausrichtung';

  @override
  String acrossLength(int count) {
    return 'Entlang der Länge: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Entlang der Breite: $count';
  }

  @override
  String layers(int count) {
    return 'Lagen: $count';
  }

  @override
  String totalItems(int count) {
    return 'Gegenstände gesamt: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Ungenutzte Länge: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Ungenutzte Breite: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Ungenutzte Höhe: $value';
  }

  @override
  String get nothingFits => 'Mit den eingegebenen Maßen passt nichts hinein';

  @override
  String get assumptionsTitle => 'Vor dem Packen';

  @override
  String get assumptions =>
      'Verwendet nutzbare Innenmaße und starre, gleiche quaderförmige Gegenstände in einem einfachen ausgerichteten Raster. Schräge Drehung, Kompression, Verschachtelung, Trennwände, Polsterung, Wandstärke, Belastungsgrenzen und gemischte Größen werden nicht berücksichtigt.';
}
