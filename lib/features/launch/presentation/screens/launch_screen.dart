import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBase,
      body: Center(child: Image.asset('assets/images/yumquick-logo.png')),
    );
  }
}
