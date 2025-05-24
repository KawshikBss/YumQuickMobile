import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_input.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class SetPasswordForm extends StatefulWidget {
  const SetPasswordForm({super.key});

  @override
  State<SetPasswordForm> createState() => _SetPasswordFormState();
}

class _SetPasswordFormState extends State<SetPasswordForm> {
  _onSubmitPassword() {
    context.go('/set-fingerprint');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthInput(label: 'Password', hintText: 'passwrod', secured: true),
        const SizedBox(height: 30),
        AuthInput(
          label: 'Confirm Password ',
          hintText: 'passwrod',
          secured: true,
        ),
        const SizedBox(height: 56),
        ElevatedButton(
          onPressed: _onSubmitPassword,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.orangeBase),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 22, vertical: 8),
            ),
          ),
          child: Text(
            'Create New Password',
            style: TextStyle(
              fontFamily: 'LeagueSpartan',
              color: AppColors.textLight,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
