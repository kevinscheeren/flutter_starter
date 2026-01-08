import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../navigation/router.dart';

@module
abstract class ThirdpartyDependencies {
  @singleton
  GoRouter get router => $ROUTER;
}
