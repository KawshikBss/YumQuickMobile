import 'package:flutter/widgets.dart';

class AppRoute {
  final String name;
  final String path;
  final Widget page;
  final IconData? icon;
  final bool requiresAuth;

  const AppRoute({
    required this.name,
    required this.path,
    required this.page,
    this.icon,
    this.requiresAuth = false,
  });
}
