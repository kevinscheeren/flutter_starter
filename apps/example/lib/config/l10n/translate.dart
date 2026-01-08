import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

class Translate {
  static AppLocalizations? _currentLocalizations;
  static Locale? _currentLocale;

  static void init(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    if (localizations != null) {
      _currentLocalizations = localizations;
      _currentLocale = Locale(localizations.localeName);
      intl.Intl.defaultLocale = localizations.localeName;
    } else {
      debugPrint(
        'Translate.init(context): AppLocalizations.of(context) returned null. '
        'Verify MaterialApp setup and Translate.init call timing.',
      );
    }
  }

  static AppLocalizations get current {
    if (_currentLocalizations == null) {
      throw Exception(
        'Translate.current accessed before Translate.init(context) was successfully called. '
        'Ensure Translate.init(context) is called in your MaterialApp builder.',
      );
    }
    return _currentLocalizations!;
  }

  static Locale? get locale => _currentLocale;

  static Future<void> load(Locale newLocale) async {
    try {
      final loadedLocalizations = lookupAppLocalizations(newLocale);
      _currentLocalizations = loadedLocalizations;
      _currentLocale = Locale(
        loadedLocalizations.localeName,
      ); // Use canonicalized localeName
      intl.Intl.defaultLocale = loadedLocalizations.localeName;
    } catch (e) {
      debugPrint(
        'Translate.load(Locale newLocale) failed for locale "${newLocale.toLanguageTag()}": $e',
      );
      rethrow;
    }
  }
}
