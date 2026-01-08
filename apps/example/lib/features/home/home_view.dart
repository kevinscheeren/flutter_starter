import 'package:flutter/material.dart';
import 'package:flutter_mvc/flutter_mvc.dart';

import 'home_controller.dart';
import 'home_model.dart';
import 'widgets/counter_display.dart';

class HomeView extends ViewWidget<HomeModel, HomeController> {
  HomeView({super.key});

  @override
  Widget build(
    BuildContext context,
    HomeController controller,
    HomeModel model,
  ) {
    return Scaffold(
      appBar: AppBar(title: Text(model.appBarTitle)),
      body: CounterDisplay(),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  HomeController createController() {
    return HomeController();
  }
}
