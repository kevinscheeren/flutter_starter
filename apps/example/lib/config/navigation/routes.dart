import 'package:go_router/go_router.dart';

import '../../features/features.dart';

final List<RouteBase> $ROUTES = [
  GoRoute(path: '/', builder: (context, state) => HomeView(), name: "Home"),
  GoRoute(
    path: '/404',
    builder: (context, state) => NotFoundView(),
    name: 'Not Found',
  ),
];
