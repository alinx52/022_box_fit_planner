// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Planejador de caixas';

  @override
  String get appDescription =>
      'Compare orientações alinhadas a 90° para saber quantos itens retangulares idênticos cabem em uma caixa.';

  @override
  String get languageTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get unitLabel => 'Unidade';

  @override
  String get millimetres => 'Milímetros (mm)';

  @override
  String get centimetres => 'Centímetros (cm)';

  @override
  String get inches => 'Polegadas (in)';

  @override
  String get unitless => 'Sem unidade';

  @override
  String get boxDimensions => 'Dimensões da caixa';

  @override
  String get itemDimensions => 'Dimensões do item';

  @override
  String get boxLength => 'Comprimento da caixa';

  @override
  String get boxWidth => 'Largura da caixa';

  @override
  String get boxHeight => 'Altura da caixa';

  @override
  String get itemLength => 'Comprimento do item';

  @override
  String get itemWidth => 'Largura do item';

  @override
  String get itemHeight => 'Altura do item';

  @override
  String get calculateFit => 'Calcular capacidade';

  @override
  String get reset => 'Redefinir';

  @override
  String get errorRequired => 'Digite um valor';

  @override
  String get errorPositive => 'Digite um número positivo';

  @override
  String get errorNumber => 'Digite um número válido';

  @override
  String get errorFinite => 'Digite um número finito';

  @override
  String get errorPrecision => 'Use no máximo 3 casas decimais';

  @override
  String get errorLimit => 'Digite até 1.000.000.000';

  @override
  String get resultsTitle => 'Resultados por orientação';

  @override
  String get bestFit => 'Melhor encaixe';

  @override
  String get orientation => 'Orientação';

  @override
  String acrossLength(int count) {
    return 'No comprimento: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Na largura: $count';
  }

  @override
  String layers(int count) {
    return 'Camadas: $count';
  }

  @override
  String totalItems(int count) {
    return 'Total de itens: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Comprimento não usado: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Largura não usada: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Altura não usada: $value';
  }

  @override
  String get nothingFits => 'Nada cabe com as dimensões informadas';

  @override
  String get assumptionsTitle => 'Antes de embalar';

  @override
  String get assumptions =>
      'Usa as dimensões internas úteis da caixa e itens retangulares rígidos e idênticos em uma grade alinhada simples. Não considera rotação inclinada, compressão, encaixe interno, divisórias, acolchoamento, espessura da parede, limites de carga nem tamanhos variados.';

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia do Planejador de Encaixe em Caixas';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Determina quantos itens retangulares idênticos cabem em uma caixa externa em diferentes orientações e calcula a sobra de espaço.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Digite as dimensões da caixa (comprimento, largura, altura) e do item individual e toque em Calcular encaixe.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Mostra o total de itens, a distribuição por eixo (C × L × A), a utilização do volume (%) e o espaço livre restante.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Caixa: 30 x 20 x 10 cm | Item: 10 x 10 x 5 cm\nResultado: 3 comp. x 2 larg. x 2 alt. = 12 itens (100% volume, 0 cm de sobra).';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Cálculo geométrico ortogonal. Não considera limites de peso, fragilidade, deformações ou plástico bolha.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas as dimensões são calculadas no aparelho sem internet. Um banner padrão do AdMob é exibido abaixo.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Planejador de caixas';

  @override
  String get appDescription =>
      'Compare orientações alinhadas a 90° para saber quantos itens retangulares idênticos cabem em uma caixa.';

  @override
  String get languageTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get unitLabel => 'Unidade';

  @override
  String get millimetres => 'Milímetros (mm)';

  @override
  String get centimetres => 'Centímetros (cm)';

  @override
  String get inches => 'Polegadas (in)';

  @override
  String get unitless => 'Sem unidade';

  @override
  String get boxDimensions => 'Dimensões da caixa';

  @override
  String get itemDimensions => 'Dimensões do item';

  @override
  String get boxLength => 'Comprimento da caixa';

  @override
  String get boxWidth => 'Largura da caixa';

  @override
  String get boxHeight => 'Altura da caixa';

  @override
  String get itemLength => 'Comprimento do item';

  @override
  String get itemWidth => 'Largura do item';

  @override
  String get itemHeight => 'Altura do item';

  @override
  String get calculateFit => 'Calcular capacidade';

  @override
  String get reset => 'Redefinir';

  @override
  String get errorRequired => 'Digite um valor';

  @override
  String get errorPositive => 'Digite um número positivo';

  @override
  String get errorNumber => 'Digite um número válido';

  @override
  String get errorFinite => 'Digite um número finito';

  @override
  String get errorPrecision => 'Use no máximo 3 casas decimais';

  @override
  String get errorLimit => 'Digite até 1.000.000.000';

  @override
  String get resultsTitle => 'Resultados por orientação';

  @override
  String get bestFit => 'Melhor encaixe';

  @override
  String get orientation => 'Orientação';

  @override
  String acrossLength(int count) {
    return 'No comprimento: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Na largura: $count';
  }

  @override
  String layers(int count) {
    return 'Camadas: $count';
  }

  @override
  String totalItems(int count) {
    return 'Total de itens: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Comprimento não usado: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Largura não usada: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Altura não usada: $value';
  }

  @override
  String get nothingFits => 'Nada cabe com as dimensões informadas';

  @override
  String get assumptionsTitle => 'Antes de embalar';

  @override
  String get assumptions =>
      'Usa as dimensões internas úteis da caixa e itens retangulares rígidos e idênticos em uma grade alinhada simples. Não considera rotação inclinada, compressão, encaixe interno, divisórias, acolchoamento, espessura da parede, limites de carga nem tamanhos variados.';

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia do Planejador de Encaixe em Caixas';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Determina quantos itens retangulares idênticos cabem em uma caixa externa em diferentes orientações e calcula a sobra de espaço.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Digite as dimensões da caixa (comprimento, largura, altura) e do item individual e toque em Calcular encaixe.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Mostra o total de itens, a distribuição por eixo (C × L × A), a utilização do volume (%) e o espaço livre restante.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Caixa: 30 x 20 x 10 cm | Item: 10 x 10 x 5 cm\nResultado: 3 comp. x 2 larg. x 2 alt. = 12 itens (100% volume, 0 cm de sobra).';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Cálculo geométrico ortogonal. Não considera limites de peso, fragilidade, deformações ou plástico bolha.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas as dimensões são calculadas no aparelho sem internet. Um banner padrão do AdMob é exibido abaixo.';
}
