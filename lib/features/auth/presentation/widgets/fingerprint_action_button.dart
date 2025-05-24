import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class FingerprintActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? textColor;
  final Color? backGroundColor;
  const FingerprintActionButton({
    super.key,
    required this.label,
    this.onPressed,
    this.textColor,
    this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size.fromWidth(160)),
        backgroundColor: WidgetStatePropertyAll(
          backGroundColor ?? AppColors.orangeBase,
        ),
        padding: WidgetStatePropertyAll(EdgeInsets.only(top: 10, bottom: 8)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'LeagueSpartan',
          color: textColor ?? AppColors.textLight,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
