import 'package:flutter/material.dart';

class LaunchButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? backGroundColor;
  const LaunchButton({
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
        backgroundColor: WidgetStatePropertyAll(backGroundColor),
      ),
      child: Text(label),
    );
  }
}
