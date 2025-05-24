import 'package:flutter/material.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_layout.dart';
import 'package:yumquick/features/auth/presentation/widgets/set_password_form.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Set Password',
      children: [
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: TextStyle(
            fontFamily: AppFonts.leagueSpartan,
            color: AppColors.textDark,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 40),
        SetPasswordForm(),
      ],
    );
  }
}
