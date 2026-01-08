import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../config/config.dart';
import '../../core/core.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return ErrorView(
      error: ErrorModel(
        title: context.translate.notFoundTitle,
        message: context.translate.notFoundMessage,
        buttonText: context.translate.notFoundGoHome,
        onButtonTap: () => $DI<GoRouter>().go('/'),
      ),
    );
  }
}
