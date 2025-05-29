import 'package:flutter/material.dart';
import 'package:yumquick/features/home/models/food_category.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.yellowBase,
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            color: AppColors.bgLight,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      FoodCategory.items
                          .map((category) => _categoryItemButton(category))
                          .toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Divider(
                  color: AppColors.orangeSecondary,
                  thickness: 2,
                  indent: 36,
                  endIndent: 36,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryItemButton(FoodCategory category) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        margin: EdgeInsets.only(
          left: FoodCategory.items.first != category ? 10 : 0,
          right: FoodCategory.items.last != category ? 10 : 0,
        ),
        decoration: BoxDecoration(
          color: AppColors.yellowSecondary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Image.asset(
              category.icon ?? 'assets/images/categories/Snacks.png',
              width: 34,
              height: 38,
              fit: BoxFit.contain,
            ),
            Text(
              category.title,
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                color: AppColors.textDark,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
