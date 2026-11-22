import 'dart:async';
import 'help_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_config.dart';
import 'app_language_menu.dart';
import 'design_system.dart';
import 'fit_calculator.dart';
import 'l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

enum _DimensionField {
  boxLength,
  boxWidth,
  boxHeight,
  itemLength,
  itemWidth,
  itemHeight,
}

enum _InputError { required, positive, number, finite, precision, limit }

class _HomePageState extends State<HomePage> {
  final _controllers = <_DimensionField, TextEditingController>{
    for (final field in _DimensionField.values) field: TextEditingController(),
  };
  final _errors = <_DimensionField, _InputError>{};
  List<FitResult>? _results;
  String _unit = 'cm';

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  _InputError? _validate(String raw) {
    final valueText = raw.trim();
    if (valueText.isEmpty) return _InputError.required;
    final value = double.tryParse(valueText);
    if (value == null) return _InputError.number;
    if (!value.isFinite) return _InputError.finite;
    if (value <= 0) return _InputError.positive;
    if (value > 1000000000) return _InputError.limit;
    if (!RegExp(r'^\+?(?:\d+(?:\.\d*)?|\.\d+)$').hasMatch(valueText)) {
      return _InputError.number;
    }
    final decimalAt = valueText.indexOf('.');
    if (decimalAt >= 0 && valueText.length - decimalAt - 1 > 3) {
      return _InputError.precision;
    }
    return null;
  }

  void _calculate() {
    final newErrors = <_DimensionField, _InputError>{};
    for (final entry in _controllers.entries) {
      final error = _validate(entry.value.text);
      if (error != null) newErrors[entry.key] = error;
    }
    if (newErrors.isNotEmpty) {
      setState(() {
        _errors
          ..clear()
          ..addAll(newErrors);
      });
      return;
    }

    double value(_DimensionField field) =>
        double.parse(_controllers[field]!.text.trim());
    final box = Dimensions(
      value(_DimensionField.boxLength),
      value(_DimensionField.boxWidth),
      value(_DimensionField.boxHeight),
    );
    final item = Dimensions(
      value(_DimensionField.itemLength),
      value(_DimensionField.itemWidth),
      value(_DimensionField.itemHeight),
    );
    setState(() {
      _errors.clear();
      _results = calculateFits(box, item);
    });
  }

  void _reset() {
    FocusManager.instance.primaryFocus?.unfocus();
    for (final controller in _controllers.values) {
      controller.clear();
    }
    setState(() {
      _errors.clear();
      _results = null;
      _unit = 'cm';
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: l10n.languageTooltip,
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            top: false,
            bottom: false,
            child: _Footer(
              designStyle: widget.designStyle,
              onDesignStyleChanged: widget.onDesignStyleChanged,
            ),
          ),
          const AdBanner(),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
          children: [
            Text(
              l10n.appDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            _UnitSelector(
              unit: _unit,
              onSelected: (unit) => setState(() => _unit = unit),
            ),
            const SizedBox(height: 12),
            _DimensionSection(
              title: l10n.boxDimensions,
              icon: Icons.inventory_2_outlined,
              fields: const [
                _DimensionField.boxLength,
                _DimensionField.boxWidth,
                _DimensionField.boxHeight,
              ],
              controllers: _controllers,
              errors: _errors,
            ),
            const SizedBox(height: 12),
            _DimensionSection(
              title: l10n.itemDimensions,
              icon: Icons.view_in_ar_outlined,
              fields: const [
                _DimensionField.itemLength,
                _DimensionField.itemWidth,
                _DimensionField.itemHeight,
              ],
              controllers: _controllers,
              errors: _errors,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    key: const ValueKey('calculate-fit'),
                    onPressed: _calculate,
                    icon: const Icon(Icons.calculate_outlined),
                    label: Text(l10n.calculateFit),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  key: const ValueKey('reset'),
                  onPressed: _reset,
                  child: Text(l10n.reset),
                ),
              ],
            ),
            if (_results case final results?) ...[
              const SizedBox(height: 24),
              _Results(results: results, unit: _unit),
            ],
            const SizedBox(height: 20),
            _Assumptions(),
          ],
        ),
      ),
    );
  }
}

class _UnitSelector extends StatelessWidget {
  const _UnitSelector({required this.unit, required this.onSelected});

  final String unit;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    String label(String value) => switch (value) {
      'mm' => l10n.millimetres,
      'in' => l10n.inches,
      'none' => l10n.unitless,
      _ => l10n.centimetres,
    };
    return Row(
      children: [
        Icon(
          Icons.straighten,
          size: 20,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Text(l10n.unitLabel, style: Theme.of(context).textTheme.titleSmall),
        const Spacer(),
        PopupMenuButton<String>(
          key: const ValueKey('unit-selector'),
          initialValue: unit,
          onSelected: onSelected,
          itemBuilder: (context) => [
            for (final value in const ['mm', 'cm', 'in', 'none'])
              PopupMenuItem(value: value, child: Text(label(value))),
          ],
          child: Container(
            constraints: const BoxConstraints(minHeight: 48),
            padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(label(unit)),
                const SizedBox(width: 4),
                const Icon(Icons.expand_more, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DimensionSection extends StatelessWidget {
  const _DimensionSection({
    required this.title,
    required this.icon,
    required this.fields,
    required this.controllers,
    required this.errors,
  });

  final String title;
  final IconData icon;
  final List<_DimensionField> fields;
  final Map<_DimensionField, TextEditingController> controllers;
  final Map<_DimensionField, _InputError> errors;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(title, style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var index = 0; index < fields.length; index++) ...[
                  if (index > 0) const SizedBox(width: 8),
                  Expanded(
                    child: _DimensionInput(
                      field: fields[index],
                      controller: controllers[fields[index]]!,
                      error: errors[fields[index]],
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DimensionInput extends StatelessWidget {
  const _DimensionInput({
    required this.field,
    required this.controller,
    required this.error,
  });

  final _DimensionField field;
  final TextEditingController controller;
  final _InputError? error;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final label = switch (field) {
      _DimensionField.boxLength => l10n.boxLength,
      _DimensionField.boxWidth => l10n.boxWidth,
      _DimensionField.boxHeight => l10n.boxHeight,
      _DimensionField.itemLength => l10n.itemLength,
      _DimensionField.itemWidth => l10n.itemWidth,
      _DimensionField.itemHeight => l10n.itemHeight,
    };
    final errorText = switch (error) {
      _InputError.required => l10n.errorRequired,
      _InputError.positive => l10n.errorPositive,
      _InputError.number => l10n.errorNumber,
      _InputError.finite => l10n.errorFinite,
      _InputError.precision => l10n.errorPrecision,
      _InputError.limit => l10n.errorLimit,
      null => null,
    };
    return TextField(
      key: ValueKey(field.name),
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: true,
      ),
      inputFormatters: [LengthLimitingTextInputFormatter(32)],
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(labelText: label, errorText: errorText),
    );
  }
}

class _Results extends StatelessWidget {
  const _Results({required this.results, required this.unit});

  final List<FitResult> results;
  final String unit;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final nothingFits = results.every((result) => result.total == 0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l10n.resultsTitle, style: Theme.of(context).textTheme.titleLarge),
        if (nothingFits) ...[
          const SizedBox(height: 8),
          Material(
            color: Theme.of(context).colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                l10n.nothingFits,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onErrorContainer,
                ),
              ),
            ),
          ),
        ],
        const SizedBox(height: 8),
        for (var index = 0; index < results.length; index++) ...[
          _ResultCard(result: results[index], isBest: index == 0, unit: unit),
          if (index != results.length - 1) const SizedBox(height: 8),
        ],
      ],
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    required this.result,
    required this.isBest,
    required this.unit,
  });

  final FitResult result;
  final bool isBest;
  final String unit;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    String dimension(double value) => formatMeasurement(value);
    String measurement(double value) {
      final formatted = formatMeasurement(value);
      return unit == 'none' ? formatted : '$formatted $unit';
    }

    final orientation = result.orientation;
    return Card(
      color: isBest ? colorScheme.primaryContainer : null,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (isBest) ...[
                  Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: colorScheme.primary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    l10n.bestFit,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                ] else ...[
                  Text(
                    l10n.orientation,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Spacer(),
                ],
                Text(
                  '${dimension(orientation.length)} × ${dimension(orientation.width)} × ${dimension(orientation.height)}',
                  key: isBest ? const ValueKey('best-orientation') : null,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 6,
              children: [
                Text(l10n.acrossLength(result.acrossLength)),
                Text(l10n.acrossWidth(result.acrossWidth)),
                Text(l10n.layers(result.layers)),
                Text(
                  l10n.totalItems(result.total),
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const Divider(height: 18),
            Wrap(
              spacing: 16,
              runSpacing: 6,
              children: [
                Text(l10n.unusedLength(measurement(result.unusedLength))),
                Text(l10n.unusedWidth(measurement(result.unusedWidth))),
                Text(l10n.unusedHeight(measurement(result.unusedHeight))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Assumptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Semantics(
      container: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.assumptionsTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.assumptions,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAppearanceMenu(
            selectedStyle: designStyle,
            onSelected: onDesignStyleChanged,
            tooltip: l10n.appearanceTooltip,
            materialLabel: l10n.appearanceMaterial,
            flatLabel: l10n.appearanceFlat,
            softLabel: l10n.appearanceSoft,
          ),
          const SizedBox(width: 4),
          IconButton(
                    icon: const Icon(Icons.help_outline),
                    tooltip: AppLocalizations.of(context).helpTooltip,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) => const HelpPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),

          TextButton.icon(
            onPressed: () {
              unawaited(
                launchUrl(
                  Uri.parse(privacyPolicyUrl),
                  mode: LaunchMode.externalApplication,
                ),
              );
            },
            icon: const Icon(Icons.privacy_tip_outlined, size: 18),
            label: Text(l10n.privacyPolicy),
          ),
        ],
      ),
    );
  }
}
