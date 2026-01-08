// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Example';

  @override
  String get errorGenericTitle => 'Fehler';

  @override
  String get errorGenericMessage => 'Uups! Es ist etwas schiefgelaufen!';

  @override
  String get errorStartingApp =>
      'Beim Starten der App is ein Fehler aufgetreten.';

  @override
  String get retry => 'Erneut Versuchen';

  @override
  String get notFoundTitle => '404';

  @override
  String get notFoundMessage => 'Seite konnte nicht gefunden werden';

  @override
  String get notFoundGoHome => 'Zur Startseite';

  @override
  String get counter => 'Du hast den Knopf so oft gedrückt:';

  @override
  String get success => 'Erflogreich';
}
