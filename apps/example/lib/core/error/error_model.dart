import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';

@freezed
abstract class ErrorModel extends ViewModel with _$ErrorModel {
  ErrorModel._();
  factory ErrorModel({
    String? title,
    String? message,
    String? buttonText,
    void Function()? onButtonTap,
  }) = _ErrorModel;
}
