import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/core/routes/app_route.dart';
import 'package:yumquick/core/routes/app_routes.dart';

GoRouter appRouter = GoRouter(
  initialLocation: '/welcome',
  routes:
      AppRoutes.all.map((AppRoute route) {
        if (route.shellChildren.isNotEmpty) {
          return ShellRoute(
            builder:
                route.pageBuilder ??
                (context, state, child) => route.page ?? const Placeholder(),
            routes:
                route.shellChildren
                    .map(
                      (child) => GoRoute(
                        name: child.name,
                        path: child.path,
                        builder:
                            (context, state) =>
                                child.page ?? const Placeholder(),
                      ),
                    )
                    .toList(),
          );
        } else {
          return GoRoute(
            name: route.name,
            path: route.path,
            builder: (context, state) => route.page ?? const Placeholder(),
          );
        }
      }).toList(),
);
