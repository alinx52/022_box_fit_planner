// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Планировщик коробки';

  @override
  String get appDescription =>
      'Сравните все ориентации под 90°, чтобы узнать, сколько одинаковых прямоугольных предметов помещается в коробку.';

  @override
  String get languageTooltip => 'Выбрать язык';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get appearanceTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальный';

  @override
  String get appearanceFlat => 'Плоский';

  @override
  String get appearanceSoft => 'Мягкий';

  @override
  String get unitLabel => 'Единица';

  @override
  String get millimetres => 'Миллиметры (мм)';

  @override
  String get centimetres => 'Сантиметры (см)';

  @override
  String get inches => 'Дюймы (in)';

  @override
  String get unitless => 'Без единиц';

  @override
  String get boxDimensions => 'Размеры коробки';

  @override
  String get itemDimensions => 'Размеры предмета';

  @override
  String get boxLength => 'Длина коробки';

  @override
  String get boxWidth => 'Ширина коробки';

  @override
  String get boxHeight => 'Высота коробки';

  @override
  String get itemLength => 'Длина предмета';

  @override
  String get itemWidth => 'Ширина предмета';

  @override
  String get itemHeight => 'Высота предмета';

  @override
  String get calculateFit => 'Рассчитать вместимость';

  @override
  String get reset => 'Сбросить';

  @override
  String get errorRequired => 'Введите значение';

  @override
  String get errorPositive => 'Введите положительное число';

  @override
  String get errorNumber => 'Введите допустимое число';

  @override
  String get errorFinite => 'Введите конечное число';

  @override
  String get errorPrecision => 'Используйте не более 3 знаков после запятой';

  @override
  String get errorLimit => 'Введите не более 1 000 000 000';

  @override
  String get resultsTitle => 'Результаты по ориентациям';

  @override
  String get bestFit => 'Лучший вариант';

  @override
  String get orientation => 'Ориентация';

  @override
  String acrossLength(int count) {
    return 'По длине: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'По ширине: $count';
  }

  @override
  String layers(int count) {
    return 'Слои: $count';
  }

  @override
  String totalItems(int count) {
    return 'Всего предметов: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Остаток по длине: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Остаток по ширине: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Остаток по высоте: $value';
  }

  @override
  String get nothingFits => 'При введённых размерах ничего не помещается';

  @override
  String get assumptionsTitle => 'Перед упаковкой';

  @override
  String get assumptions =>
      'Используются полезные внутренние размеры коробки и одинаковые жёсткие прямоугольные предметы в простой выровненной сетке. Не учитываются наклонный поворот, сжатие, вложение, перегородки, прокладки, толщина стенок, предельная нагрузка и разные размеры предметов.';

  @override
  String get helpTooltip => 'Справка и руководство';

  @override
  String get helpTitle => 'Руководство по укладке в коробки';

  @override
  String get helpProblemSolvedTitle => 'Решаемая задача';

  @override
  String get helpProblemSolvedContent =>
      'Определяет, сколько одинаковых прямоугольных предметов поместится в коробку при разных поворотах, и вычисляет свободный объем.';

  @override
  String get helpHowToUseTitle => 'Как использовать';

  @override
  String get helpHowToUseContent =>
      'Введите внешние размеры коробки (Д, Ш, В) и размеры одного предмета (Д, Ш, В), затем нажмите «Рассчитать».';

  @override
  String get helpReadingResultsTitle => 'Чтение результатов';

  @override
  String get helpReadingResultsContent =>
      'Отображает общее число предметов, раскладку по осям (Д × Ш × В), процент использования объема (%) и свободное место.';

  @override
  String get helpExampleTitle => 'Пример';

  @override
  String get helpExampleContent =>
      'Коробка: 30 x 20 x 10 см | Предмет: 10 x 10 x 5 см\nРезультат: 3 (Д) x 2 (Ш) x 2 (В) = 12 шт (100% объема, 0 см остатка).';

  @override
  String get helpLimitsTitle => 'Проверка и ограничения';

  @override
  String get helpLimitsContent =>
      'Геометрический ортогональный расчет. Не учитывает ограничения по весу, хрупкость, амортизирующую упаковку и деформацию.';

  @override
  String get helpDataAndPrivacyTitle => 'Локальные данные и реклама';

  @override
  String get helpDataAndPrivacyContent =>
      'Все размеры рассчитываются локально на устройстве без интернета. Внизу экрана отображается стандартный баннер AdMob.';
}
