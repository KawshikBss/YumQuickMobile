import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_layout.dart';
import 'package:yumquick/features/auth/presentation/widgets/signup_alternatives.dart';
import 'package:yumquick/features/auth/presentation/widgets/signup_form.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TapGestureRecognizer _loginRecognizer;
  @override
  void initState() {
    super.initState();
    _loginRecognizer =
        TapGestureRecognizer()
          ..onTap = () {
            context.go('/login');
          };
  }

  @override
  void dispose() {
    super.dispose();
    _loginRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'New Account',
      children: [
        SignupForm(),
        const SizedBox(height: 20),
        SignupAlternatives(),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: 'Already have an account? ',
            style: TextStyle(
              fontFamily: AppFonts.leagueSpartan,
              color: AppColors.textDark,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: 'Log in',
                style: TextStyle(
                  fontFamily: AppFonts.leagueSpartan,
                  color: AppColors.orangeBase,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: _loginRecognizer,
              ),
            ],
          ),
        ),
        SizedBox(height: 90),
      ],
    );
  }
}
