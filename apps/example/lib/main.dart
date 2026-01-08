import 'package:flutter/material.dart';
import 'package:universal_url_strategy/universal_url_strategy.dart';

import 'core/core.dart';

void main() {
  configureUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppView());
}
