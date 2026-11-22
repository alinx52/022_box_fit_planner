// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Planificador de cajas';

  @override
  String get appDescription =>
      'Compara orientaciones alineadas a 90° para saber cuántos artículos rectangulares idénticos caben en una caja.';

  @override
  String get languageTooltip => 'Elegir idioma';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get appearanceTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get unitLabel => 'Unidad';

  @override
  String get millimetres => 'Milímetros (mm)';

  @override
  String get centimetres => 'Centímetros (cm)';

  @override
  String get inches => 'Pulgadas (in)';

  @override
  String get unitless => 'Sin unidad';

  @override
  String get boxDimensions => 'Dimensiones de la caja';

  @override
  String get itemDimensions => 'Dimensiones del artículo';

  @override
  String get boxLength => 'Largo de la caja';

  @override
  String get boxWidth => 'Ancho de la caja';

  @override
  String get boxHeight => 'Alto de la caja';

  @override
  String get itemLength => 'Largo del artículo';

  @override
  String get itemWidth => 'Ancho del artículo';

  @override
  String get itemHeight => 'Alto del artículo';

  @override
  String get calculateFit => 'Calcular capacidad';

  @override
  String get reset => 'Restablecer';

  @override
  String get errorRequired => 'Introduce un valor';

  @override
  String get errorPositive => 'Introduce un número positivo';

  @override
  String get errorNumber => 'Introduce un número válido';

  @override
  String get errorFinite => 'Introduce un número finito';

  @override
  String get errorPrecision => 'Usa como máximo 3 decimales';

  @override
  String get errorLimit => 'Introduce 1.000.000.000 o menos';

  @override
  String get resultsTitle => 'Resultados por orientación';

  @override
  String get bestFit => 'Mejor ajuste';

  @override
  String get orientation => 'Orientación';

  @override
  String acrossLength(int count) {
    return 'A lo largo: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'A lo ancho: $count';
  }

  @override
  String layers(int count) {
    return 'Capas: $count';
  }

  @override
  String totalItems(int count) {
    return 'Total de artículos: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Largo sin usar: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Ancho sin usar: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Alto sin usar: $value';
  }

  @override
  String get nothingFits => 'Nada cabe con las dimensiones introducidas';

  @override
  String get assumptionsTitle => 'Antes de embalar';

  @override
  String get assumptions =>
      'Usa las dimensiones interiores útiles de la caja y artículos rectangulares rígidos e idénticos en una cuadrícula alineada simple. No admite giro diagonal, compresión, encaje, separadores, relleno, grosor de pared, límites de carga ni tamaños mezclados.';

  @override
  String get helpTooltip => 'Ayuda y guía';

  @override
  String get helpTitle => 'Guía del planificador de encaje en cajas';

  @override
  String get helpProblemSolvedTitle => 'Problema que resuelve';

  @override
  String get helpProblemSolvedContent =>
      'Determina cuántos artículos rectangulares idénticos caben en una caja en diferentes orientaciones y calcula el espacio sobrante.';

  @override
  String get helpHowToUseTitle => 'Cómo usar';

  @override
  String get helpHowToUseContent =>
      'Introduce las dimensiones de la caja exterior (largo, ancho, alto) y del artículo individual, y pulsa Calcular encaje.';

  @override
  String get helpReadingResultsTitle => 'Interpretación de resultados';

  @override
  String get helpReadingResultsContent =>
      'Muestra total de artículos, distribución por eje (largo × ancho × alto), porcentaje de volumen útil (%) y espacio sobrante.';

  @override
  String get helpExampleTitle => 'Ejemplo';

  @override
  String get helpExampleContent =>
      'Caja: 30 x 20 x 10 cm | Artículo: 10 x 10 x 5 cm\nResultado: 3 largo x 2 ancho x 2 alto = 12 artículos (100% volumen, 0 cm sobrante).';

  @override
  String get helpLimitsTitle => 'Validaciones y límites';

  @override
  String get helpLimitsContent =>
      'Cálculo geométrico ortogonal. No considera límites de peso, fragilidad, deformación ni material de relleno protector.';

  @override
  String get helpDataAndPrivacyTitle => 'Datos locales y anuncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas las dimensiones se calculan en el dispositivo sin conexión. Se muestra un banner estándar de AdMob en la parte inferior.';
}
