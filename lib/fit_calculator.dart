class Dimensions {
  const Dimensions(this.length, this.width, this.height);

  final double length;
  final double width;
  final double height;

  String get identity => '$length|$width|$height';
}

class FitResult {
  const FitResult({
    required this.orientation,
    required this.acrossLength,
    required this.acrossWidth,
    required this.layers,
    required this.unusedLength,
    required this.unusedWidth,
    required this.unusedHeight,
    required this.evaluationIndex,
  });

  final Dimensions orientation;
  final int acrossLength;
  final int acrossWidth;
  final int layers;
  final double unusedLength;
  final double unusedWidth;
  final double unusedHeight;
  final int evaluationIndex;

  int get total => acrossLength * acrossWidth * layers;
}

List<FitResult> calculateFits(Dimensions box, Dimensions item) {
  int scaled(double value) => (value * 1000).round();

  final candidates = <Dimensions>[
    Dimensions(item.length, item.width, item.height),
    Dimensions(item.length, item.height, item.width),
    Dimensions(item.width, item.length, item.height),
    Dimensions(item.width, item.height, item.length),
    Dimensions(item.height, item.length, item.width),
    Dimensions(item.height, item.width, item.length),
  ];
  final seen = <String>{};
  final results = <FitResult>[];

  for (var index = 0; index < candidates.length; index++) {
    final orientation = candidates[index];
    if (!seen.add(orientation.identity)) continue;
    final boxLength = scaled(box.length);
    final boxWidth = scaled(box.width);
    final boxHeight = scaled(box.height);
    final itemLength = scaled(orientation.length);
    final itemWidth = scaled(orientation.width);
    final itemHeight = scaled(orientation.height);
    final acrossLength = boxLength ~/ itemLength;
    final acrossWidth = boxWidth ~/ itemWidth;
    final layers = boxHeight ~/ itemHeight;
    results.add(
      FitResult(
        orientation: orientation,
        acrossLength: acrossLength,
        acrossWidth: acrossWidth,
        layers: layers,
        unusedLength: (boxLength - acrossLength * itemLength) / 1000,
        unusedWidth: (boxWidth - acrossWidth * itemWidth) / 1000,
        unusedHeight: (boxHeight - layers * itemHeight) / 1000,
        evaluationIndex: index,
      ),
    );
  }

  results.sort((left, right) {
    final totalOrder = right.total.compareTo(left.total);
    return totalOrder != 0
        ? totalOrder
        : left.evaluationIndex.compareTo(right.evaluationIndex);
  });
  return results;
}

String formatMeasurement(double value) {
  if (value.abs() < 0.0005) return '0';
  return value
      .toStringAsFixed(3)
      .replaceFirst(RegExp(r'0+$'), '')
      .replaceFirst(RegExp(r'\.$'), '');
}
