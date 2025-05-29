import 'package:flutter/material.dart';
import 'package:yumquick/features/home/models/food_item.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Best Seller',
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                color: AppColors.textDark,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    'View All',
                    style: TextStyle(
                      fontFamily: 'LeagueSpartan',
                      color: AppColors.orangeBase,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.chevron_right,
                    color: AppColors.orangeBase,
                    size: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                FoodItem.items
                    .map((foodItem) => _bestSellerItem(foodItem))
                    .toList(),
          ),
        ),
      ],
    );
  }

  Widget _bestSellerItem(FoodItem foodItem) {
    return Container(
      margin: EdgeInsets.only(
        left: FoodItem.items.first != foodItem ? 5 : 0,
        right: FoodItem.items.last != foodItem ? 5 : 0,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                foodItem.thumbnail ?? '',
                width: 70,
                height: 108,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 12,
              right: -1.5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.orangeBase,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30),
                  ),
                ),
                child: Text(
                  '\$${foodItem.price}',
                  style: TextStyle(
                    fontFamily: 'LeagueSpartan',
                    color: AppColors.textLight,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
