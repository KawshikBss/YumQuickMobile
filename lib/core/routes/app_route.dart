import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  final String name;
  final String path;
  final Widget? page;
  final Widget Function(BuildContext, GoRouterState, Widget)? pageBuilder;
  final IconData? icon;
  final bool requiresAuth;
  final List<AppRoute> shellChildren;

  const AppRoute({
    required this.name,
    required this.path,
    this.page,
    this.pageBuilder,
    this.icon,
    this.requiresAuth = false,
    this.shellChildren = const [],
  });
}
