import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_input.dart';
import 'package:yumquick/features/auth/presentation/widgets/submit_button.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  _onSignUp() {
    context.go('/set-password');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthInput(label: 'Full Name', hintText: 'example example'),
        const SizedBox(height: 22),
        AuthInput(label: 'Email', hintText: 'example@example.com'),
        const SizedBox(height: 22),
        AuthInput(label: 'Email', hintText: 'example@example.com'),
        const SizedBox(height: 22),
        AuthInput(label: 'Phone Number', hintText: '+ 123 456 789'),
        const SizedBox(height: 22),
        AuthInput(
          label: 'Date of birth',
          hintText: 'DD / MM /YYY',
          dateType: true,
        ),
        const SizedBox(height: 20),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'By continuing, you agree to\n',
            style: TextStyle(
              fontFamily: AppFonts.leagueSpartan,
              color: AppColors.textDark,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: 'Terms of Use',
                style: TextStyle(
                  fontFamily: AppFonts.leagueSpartan,
                  color: AppColors.orangeBase,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: 'Privacy Policy.',
                style: TextStyle(
                  fontFamily: AppFonts.leagueSpartan,
                  color: AppColors.orangeBase,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SubmitButton(label: 'Sign Up', onPressed: _onSignUp),
      ],
    );
  }
}
