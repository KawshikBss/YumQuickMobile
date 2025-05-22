import 'package:flutter/material.dart';
import 'package:yumquick/features/launch/presentation/widgets/launch_button.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeBase,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/yumquick-logo2.png'),
            LaunchButton(label: 'Log In'),
            LaunchButton(label: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}
