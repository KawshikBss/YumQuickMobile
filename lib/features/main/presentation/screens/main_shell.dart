import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/core/routes/app_routes.dart';
import 'package:yumquick/features/main/presentation/widgets/main_bottom_navigation.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class MainShell extends StatelessWidget {
  final Widget child;
  const MainShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    int currentIndex = AppRoutes.mainShellRoutes.indexWhere(
      (element) => element.path == location,
    );
    if (currentIndex < 0) currentIndex = 0;
    onChangeLocation(int index) {
      context.go(AppRoutes.mainShellRoutes[index].path);
    }

    return Scaffold(
      backgroundColor: AppColors.bgLight,
      body: child,
      bottomNavigationBar: MainBottomNavigation(
        onTap: onChangeLocation,
        currentIndex: currentIndex,
        items: AppRoutes.mainShellRoutes,
      ),
    );
  }
}
