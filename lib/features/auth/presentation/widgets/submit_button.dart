import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? backGroundColor;
  const SubmitButton({
    super.key,
    required this.label,
    this.onPressed,
    this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size.fromWidth(210)),
        backgroundColor: WidgetStatePropertyAll(
          backGroundColor ?? AppColors.orangeBase,
        ),
        padding: WidgetStatePropertyAll(EdgeInsets.only(top: 14, bottom: 8)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'LeagueSpartan',
          color: AppColors.textLight,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
