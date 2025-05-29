import 'package:flutter/material.dart';
import 'package:yumquick/features/home/presentation/widgets/best_seller_section.dart';
import 'package:yumquick/features/home/presentation/widgets/categories_section.dart';
import 'package:yumquick/features/home/presentation/widgets/home_header.dart';
import 'package:yumquick/features/home/presentation/widgets/offers_section.dart';
import 'package:yumquick/features/home/presentation/widgets/recommended_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const HomeHeader(),
        const CategoriesSection(),
        const BestSellerSection(),
        const OffersSection(),
        const RecommendedSection(),
      ],
    );
  }
}
