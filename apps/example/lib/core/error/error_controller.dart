import 'package:flutter_mvc/flutter_mvc.dart';
import 'error_model.dart';

class ErrorController extends ViewController<ErrorModel> {
  ErrorController([ErrorModel? model]) : super(model ?? ErrorModel());
}
