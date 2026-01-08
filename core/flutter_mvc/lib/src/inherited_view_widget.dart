part of '../flutter_mvc.dart';

abstract class InheritedViewWidget<
  M extends ViewModel,
  C extends ViewController<M>
>
    extends StatefulWidget {
  const InheritedViewWidget({super.key});

  void initState() {}
  Widget build(BuildContext context, C controller, M model);

  @override
  State<InheritedViewWidget<M, C>> createState() =>
      _InheritedViewWidgetState<M, C>();
}

class _InheritedViewWidgetState<
  M extends ViewModel,
  C extends ViewController<M>
>
    extends State<InheritedViewWidget<M, C>> {
  @override
  void initState() {
    super.initState();
    widget.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _ViewControllerInjector.of<C>(context).controller;
    return ValueListenableBuilder<M>(
      valueListenable: controller,
      builder: (context, model, child) {
        return widget.build(context, controller, model);
      },
    );
  }
}
