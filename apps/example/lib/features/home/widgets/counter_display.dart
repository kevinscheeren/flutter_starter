import 'package:flutter/material.dart';
import 'package:flutter_mvc/flutter_mvc.dart';

import '../../../config/config.dart';
import '../home_controller.dart';
import '../home_model.dart';

class CounterDisplay extends InheritedViewWidget<HomeModel, HomeController> {
  const CounterDisplay({super.key});

  @override
  Widget build(
    BuildContext context,
    HomeController controller,
    HomeModel model,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.translate.counter, textAlign: TextAlign.center),
          Text(model.count.toString(), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
