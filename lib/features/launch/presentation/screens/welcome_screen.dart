import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/launch/presentation/widgets/launch_button.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    onLogin() {
      context.go('/login');
    }

    onSignup() {
      context.go('/signup');
    }

    return Scaffold(
      backgroundColor: AppColors.orangeBase,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/yumquick-logo2.png'),
            const SizedBox(height: 30),
            SizedBox(
              width: 295,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                style: TextStyle(
                  color: AppColors.textLight,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 42),
            LaunchButton(
              label: 'Log In',
              onPressed: onLogin,
              backGroundColor: AppColors.yellowBase,
            ),
            const SizedBox(height: 6),
            LaunchButton(
              label: 'Sign Up',
              onPressed: onSignup,
              backGroundColor: AppColors.yellowSecondary,
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
