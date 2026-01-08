import 'package:flutter/material.dart';

import 'app_localizations.dart';

extension TranslateExtension on BuildContext {
  AppLocalizations get translate => AppLocalizations.of(this)!;
}
