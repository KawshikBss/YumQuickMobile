import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_layout.dart';
import 'package:yumquick/features/auth/presentation/widgets/login_form.dart';
import 'package:yumquick/features/auth/presentation/widgets/signup_alternatives.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TapGestureRecognizer _signUpRecognizer;
  @override
  void initState() {
    super.initState();
    _signUpRecognizer = TapGestureRecognizer()..onTap = () {
      context.go('/signup');
    };
  }

  @override
  void dispose() {
    super.dispose();
    _signUpRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Log In',
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Welcome',
            style: TextStyle(
              fontFamily: AppFonts.leagueSpartan,
              color: AppColors.textDark,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: TextStyle(
            fontFamily: AppFonts.leagueSpartan,
            color: AppColors.textDark,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 36),
        LoginForm(),
        const SizedBox(height: 20),
        SignupAlternatives(),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: 'Don’t have an account? ',
            style: TextStyle(
              fontFamily: AppFonts.leagueSpartan,
              color: AppColors.textDark,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  fontFamily: AppFonts.leagueSpartan,
                  color: AppColors.orangeBase,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                recognizer: _signUpRecognizer,
              ),
            ],
          ),
        ),
        SizedBox(height: 90),
      ],
    );
  }
}
