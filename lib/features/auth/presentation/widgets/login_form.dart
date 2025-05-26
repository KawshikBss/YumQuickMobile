import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_input.dart';
import 'package:yumquick/features/auth/presentation/widgets/submit_button.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  _onSubmit() {
    context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthInput(
          label: 'Email or Mobile Number',
          hintText: 'example@example.com',
        ),
        const SizedBox(height: 22),
        AuthInput(label: 'Password', hintText: 'password', secured: true),
        const SizedBox(height: 14),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: AppFonts.leagueSpartan,
                color: AppColors.orangeBase,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        SubmitButton(label: 'Log In', onPressed: _onSubmit),
      ],
    );
  }
}
