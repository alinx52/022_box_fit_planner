// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Doospasplanner';

  @override
  String get appDescription =>
      'Vergelijk haaks uitgelijnde standen om te zien hoeveel identieke rechthoekige voorwerpen in een doos passen.';

  @override
  String get languageTooltip => 'Taal kiezen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get appearanceTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get unitLabel => 'Eenheid';

  @override
  String get millimetres => 'Millimeter (mm)';

  @override
  String get centimetres => 'Centimeter (cm)';

  @override
  String get inches => 'Inch (in)';

  @override
  String get unitless => 'Geen eenheid';

  @override
  String get boxDimensions => 'Afmetingen doos';

  @override
  String get itemDimensions => 'Afmetingen voorwerp';

  @override
  String get boxLength => 'Lengte doos';

  @override
  String get boxWidth => 'Breedte doos';

  @override
  String get boxHeight => 'Hoogte doos';

  @override
  String get itemLength => 'Lengte voorwerp';

  @override
  String get itemWidth => 'Breedte voorwerp';

  @override
  String get itemHeight => 'Hoogte voorwerp';

  @override
  String get calculateFit => 'Pasvorm berekenen';

  @override
  String get reset => 'Opnieuw instellen';

  @override
  String get errorRequired => 'Voer een waarde in';

  @override
  String get errorPositive => 'Voer een positief getal in';

  @override
  String get errorNumber => 'Voer een geldig getal in';

  @override
  String get errorFinite => 'Voer een eindig getal in';

  @override
  String get errorPrecision => 'Gebruik maximaal 3 decimalen';

  @override
  String get errorLimit => 'Voer maximaal 1.000.000.000 in';

  @override
  String get resultsTitle => 'Resultaten per stand';

  @override
  String get bestFit => 'Beste pasvorm';

  @override
  String get orientation => 'Stand';

  @override
  String acrossLength(int count) {
    return 'Over de lengte: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Over de breedte: $count';
  }

  @override
  String layers(int count) {
    return 'Lagen: $count';
  }

  @override
  String totalItems(int count) {
    return 'Totaal voorwerpen: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Ongebruikte lengte: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Ongebruikte breedte: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Ongebruikte hoogte: $value';
  }

  @override
  String get nothingFits => 'Er past niets met de ingevoerde afmetingen';

  @override
  String get assumptionsTitle => 'Voor het inpakken';

  @override
  String get assumptions =>
      'Gebruikt bruikbare binnenmaten en stijve, identieke rechthoekige voorwerpen in een eenvoudig uitgelijnd raster. Schuin draaien, samendrukken, nesten, tussenschotten, opvulling, wanddikte, belastingslimieten en gemengde maten worden niet meegenomen.';

  @override
  String get helpTooltip => 'Hulp en gids';

  @override
  String get helpTitle => 'Gids voor doospakking';

  @override
  String get helpProblemSolvedTitle => 'Opgelost probleem';

  @override
  String get helpProblemSolvedContent =>
      'Berekent hoeveel identieke rechthoekige artikelen in een doos passen per oriëntatie en berekent het overgebleven volume.';

  @override
  String get helpHowToUseTitle => 'Gebruiksaanwijzing';

  @override
  String get helpHowToUseContent =>
      'Voer doosafmetingen (L, B, H) en artikelafmetingen (L, B, H) in en tik op Berekenen.';

  @override
  String get helpReadingResultsTitle => 'Resultaten aflezen';

  @override
  String get helpReadingResultsContent =>
      'Toont totale artikelen, verdeling per as (L × B × H), volume-benuttingspercentage (%) en resterende doosruimte.';

  @override
  String get helpExampleTitle => 'Voorbeeld';

  @override
  String get helpExampleContent =>
      'Doos: 30 x 20 x 10 cm | Artikel: 10 x 10 x 5 cm\nResultaat: 3 lengte x 2 breedte x 2 hoogte = 12 artikelen (100% volume, 0 cm rest).';

  @override
  String get helpLimitsTitle => 'Validatie & Beperkingen';

  @override
  String get helpLimitsContent =>
      'Geometrische orthogonale pakberekening. Houdt geen rekening met gewichtslimieten, breekbaarheid of opvulmateriaal.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale gegevens & Advertenties';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle afmetingen worden lokaal berekend zonder internetverbinding. Onderaan staat een standaard AdMob-banner.';
}
