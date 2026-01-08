import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';

@freezed
sealed class AppModel extends ViewModel with _$AppModel {
  AppModel._();

  factory AppModel.initializing() = AppModelInitializing;

  factory AppModel.initalized() = AppModelInitialized;

  factory AppModel.error({
    required Object error,
    required StackTrace stackTrace,
  }) = AppModelError;
}
