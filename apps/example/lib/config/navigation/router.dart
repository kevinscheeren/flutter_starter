import 'package:go_router/go_router.dart';

import 'routes.dart';

final GoRouter $ROUTER = GoRouter(
  routes: $ROUTES,
  initialLocation: "/",
  redirect: (context, state) {
    if (state.error != null) {
      return '/404';
    }
    return state.fullPath;
  },
);
