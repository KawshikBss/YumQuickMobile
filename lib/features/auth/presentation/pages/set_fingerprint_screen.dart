import 'package:flutter/material.dart';
import 'package:yumquick/features/auth/presentation/widgets/auth_layout.dart';
import 'package:yumquick/features/auth/presentation/widgets/fingerprint_action_button.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class SetFingerprintScreen extends StatelessWidget {
  const SetFingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Set Your Fingerprint',
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
        const SizedBox(height: 78),
        Image.asset(
          'assets/images/Mark-large.png',
          width: 250,
          fit: BoxFit.fitHeight,
        ),
        const SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FingerprintActionButton(
              label: 'Skip',
              textColor: AppColors.orangeBase,
              backGroundColor: AppColors.orangeSecondary,
            ),
            const SizedBox(width: 12),
            FingerprintActionButton(label: 'Continue'),
          ],
        ),
      ],
    );
  }
}
