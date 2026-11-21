// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Pianificatore scatole';

  @override
  String get appDescription =>
      'Confronta gli orientamenti allineati a 90° per sapere quanti oggetti rettangolari identici entrano in una scatola.';

  @override
  String get languageTooltip => 'Scegli lingua';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get appearanceTooltip => 'Scegli aspetto';

  @override
  String get appearanceMaterial => 'Materiale';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get unitLabel => 'Unità';

  @override
  String get millimetres => 'Millimetri (mm)';

  @override
  String get centimetres => 'Centimetri (cm)';

  @override
  String get inches => 'Pollici (in)';

  @override
  String get unitless => 'Senza unità';

  @override
  String get boxDimensions => 'Dimensioni scatola';

  @override
  String get itemDimensions => 'Dimensioni oggetto';

  @override
  String get boxLength => 'Lunghezza scatola';

  @override
  String get boxWidth => 'Larghezza scatola';

  @override
  String get boxHeight => 'Altezza scatola';

  @override
  String get itemLength => 'Lunghezza oggetto';

  @override
  String get itemWidth => 'Larghezza oggetto';

  @override
  String get itemHeight => 'Altezza oggetto';

  @override
  String get calculateFit => 'Calcola capienza';

  @override
  String get reset => 'Reimposta';

  @override
  String get errorRequired => 'Inserisci un valore';

  @override
  String get errorPositive => 'Inserisci un numero positivo';

  @override
  String get errorNumber => 'Inserisci un numero valido';

  @override
  String get errorFinite => 'Inserisci un numero finito';

  @override
  String get errorPrecision => 'Usa al massimo 3 decimali';

  @override
  String get errorLimit => 'Inserisci al massimo 1.000.000.000';

  @override
  String get resultsTitle => 'Risultati per orientamento';

  @override
  String get bestFit => 'Migliore disposizione';

  @override
  String get orientation => 'Orientamento';

  @override
  String acrossLength(int count) {
    return 'Lungo la lunghezza: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Lungo la larghezza: $count';
  }

  @override
  String layers(int count) {
    return 'Strati: $count';
  }

  @override
  String totalItems(int count) {
    return 'Oggetti totali: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Lunghezza inutilizzata: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Larghezza inutilizzata: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Altezza inutilizzata: $value';
  }

  @override
  String get nothingFits => 'Nulla entra con le dimensioni inserite';

  @override
  String get assumptionsTitle => 'Prima di imballare';

  @override
  String get assumptions =>
      'Usa le dimensioni interne utili e oggetti rettangolari rigidi identici in una semplice griglia allineata. Non considera rotazioni oblique, compressione, annidamento, divisori, imbottitura, spessore delle pareti, limiti di carico o dimensioni miste.';
}
