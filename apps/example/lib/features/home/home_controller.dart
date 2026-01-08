import 'package:flutter_mvc/flutter_mvc.dart';

import 'home_model.dart';

class HomeController extends ViewController<HomeModel> {
  HomeController() : super(HomeModel(count: 0));

  void increment() {
    value = value.copyWith(count: value.count + 1);
  }
}
