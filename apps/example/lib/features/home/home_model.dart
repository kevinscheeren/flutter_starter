import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';

@freezed
abstract class HomeModel extends ViewModel with _$HomeModel {
  HomeModel._();

  @override
  final String appBarTitle = "Example App";

  factory HomeModel({required int count}) = _HomeModel;
}
