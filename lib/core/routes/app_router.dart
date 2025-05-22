import 'package:go_router/go_router.dart';
import 'package:yumquick/core/routes/app_route.dart';
import 'package:yumquick/core/routes/app_routes.dart';

GoRouter appRouter = GoRouter(
  routes:
      AppRoutes.all
          .map(
            (AppRoute route) => GoRoute(
              name: route.name,
              path: route.path,
              builder: (context, state) => route.page,
            ),
          )
          .toList(),
);
