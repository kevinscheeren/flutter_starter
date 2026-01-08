import 'package:flutter/material.dart';
import 'package:flutter_mvc/flutter_mvc.dart';

import '../../config/config.dart';
import 'error_controller.dart';
import 'error_model.dart';

export 'error_model.dart';

class ErrorView extends ViewWidget<ErrorModel, ErrorController> {
  ErrorView({this.error, super.key});

  final ErrorModel? error;

  @override
  Widget build(
    BuildContext context,
    ErrorController controller,
    ErrorModel model,
  ) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                model.title ?? context.translate.errorGenericTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text(
                model.message ?? context.translate.errorGenericMessage,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.0),
              if (model.buttonText != null && model.onButtonTap != null)
                OutlinedButton(
                  onPressed: model.onButtonTap,
                  child: Text(model.buttonText!),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ErrorController createController() {
    return ErrorController(error);
  }
}
