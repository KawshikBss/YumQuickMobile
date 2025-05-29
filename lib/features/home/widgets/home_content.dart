import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Stack(
        children: [
          Container(color: AppColors.yellowBase),
          Container(
            decoration: BoxDecoration(
              color: AppColors.bgLight,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }
}
