part of '../flutter_mvc.dart';

abstract class ViewController<M extends ViewModel> extends ValueNotifier<M> {
  ViewController(super.value);

  void init() {}
}
