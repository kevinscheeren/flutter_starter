part of '../flutter_mvc.dart';

class _ViewControllerInjector<T extends ViewController>
    extends InheritedWidget {
  const _ViewControllerInjector({
    super.key,
    required this.controller,
    required super.child,
  });

  final T controller;

  static _ViewControllerInjector<T>? maybeOf<T extends ViewController>(
    BuildContext context,
  ) {
    return context
        .dependOnInheritedWidgetOfExactType<_ViewControllerInjector<T>>();
  }

  static _ViewControllerInjector<T> of<T extends ViewController>(
    BuildContext context,
  ) {
    return maybeOf<T>(context)!;
  }

  @override
  bool updateShouldNotify(_ViewControllerInjector oldWidget) =>
      controller != oldWidget.controller;
}
