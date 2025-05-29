import 'package:flutter/material.dart';
import 'package:yumquick/features/home/widgets/home_content.dart';
import 'package:yumquick/features/home/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [HomeHeader(), HomeContent()]);
  }
}
