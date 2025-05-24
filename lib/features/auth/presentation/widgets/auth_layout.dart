import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class AuthLayout extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  const AuthLayout({super.key, this.title, this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBase,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/welcome');
          },
          icon: Icon(Icons.chevron_left, color: AppColors.orangeBase),
        ),
        title: Text(
          title ?? 'Welcome',
          style: TextStyle(
            fontSize: 28,
            color: AppColors.textLight,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 34, right: 36, left: 36),
                decoration: BoxDecoration(
                  color: AppColors.bgLight,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(child: Column(children: children)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
