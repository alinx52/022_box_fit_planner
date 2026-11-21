import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every required ARB has the complete English message key set', () {
    const locales = [
      'en',
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'zh',
      'es',
      'fr',
      'de',
      'pt_BR',
      'pt',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
    ];
    Set<String> messageKeys(String locale) {
      final contents = File('lib/l10n/app_$locale.arb').readAsStringSync();
      final arb = jsonDecode(contents) as Map<String, dynamic>;
      return arb.keys.where((key) => !key.startsWith('@')).toSet();
    }

    final englishKeys = messageKeys('en');
    for (final locale in locales) {
      expect(messageKeys(locale), englishKeys, reason: locale);
    }
  });
}
