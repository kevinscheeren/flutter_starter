import 'package:flutter/material.dart';
import 'package:flutter_mvc/flutter_mvc.dart';

import '../../config/config.dart';
import '../error/error_view.dart';
import '../splash/splash_view.dart';
import 'app_controller.dart';
import 'app_model.dart';

class AppView extends ViewWidget<AppModel, AppController> {
  AppView({super.key});

  @override
  Widget build(BuildContext context, AppController controller, AppModel model) {
    return MaterialApp.router(
      routerConfig: controller.router,
      onGenerateTitle: (context) => context.translate.appName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        Translate.init(context);
        return switch (model) {
          AppModelInitializing() => const SplashView(),
          AppModelInitialized() => child!,
          AppModelError() => ErrorView(
            error: ErrorModel(
              title: context.translate.errorStartingApp,
              message: model.stackTrace.toString(),
              buttonText: context.translate.retry,
              onButtonTap: controller.retryInitialization,
            ),
          ),
        };
      },
    );
  }

  @override
  AppController createController() {
    return AppController();
  }
}
