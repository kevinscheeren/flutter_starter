part of '../flutter_mvc.dart';

abstract class ViewWidget<M extends ViewModel, C extends ViewController<M>>
    extends StatefulWidget {
  ViewWidget({super.key});

  void initState() {}
  C createController();
  Widget build(BuildContext context, C controller, M model);

  late final C controller = createController();

  @override
  State<ViewWidget<M, C>> createState() => _ViewWidgetState<M, C>();
}

class _ViewWidgetState<M extends ViewModel, C extends ViewController<M>>
    extends State<ViewWidget<M, C>> {
  @override
  void initState() {
    super.initState();
    widget.initState();
    widget.controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return _ViewControllerInjector(
      controller: widget.controller,
      child: ValueListenableBuilder<M>(
        valueListenable: widget.controller,
        builder: (context, model, child) {
          return widget.build(context, widget.controller, model);
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
