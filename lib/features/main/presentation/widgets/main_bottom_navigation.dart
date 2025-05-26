import 'package:flutter/material.dart';
import 'package:yumquick/core/routes/app_route.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class MainBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  final List<AppRoute> items;
  const MainBottomNavigation({
    super.key,
    this.currentIndex = 0,
    this.onTap,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        color: AppColors.orangeBase,
        padding: EdgeInsets.zero, // removes all default padding
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          items:
              items
                  .map(
                    (route) => BottomNavigationBarItem(
                      label: route.name,
                      icon: SizedBox(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Image.asset(
                            route.iconImage ??
                                'assets/images/icons/home-icon.png',
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.orangeBase,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
        ),
      ),
    );
  }
}
