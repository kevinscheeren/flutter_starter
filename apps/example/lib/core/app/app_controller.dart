import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:go_router/go_router.dart';

import '../../config/config.dart';
import 'app_model.dart';

class AppController extends ViewController<AppModel> {
  AppController() : super(AppModel.initializing());

  GoRouter? get router {
    try {
      return $DI<GoRouter>();
    } catch (e) {
      return null;
    }
  }

  @override
  void init() {
    value = AppModel.initializing();
    try {
      // initialization logic
      configureDependencies();
      value = AppModel.initalized();
    } catch (e, st) {
      value = AppModel.error(error: e, stackTrace: st);
    }
  }

  void retryInitialization() {
    resetDependencies();
    init();
  }
}
