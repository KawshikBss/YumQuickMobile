import 'package:flutter/material.dart';
import 'package:yumquick/features/home/models/food_item.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({super.key});

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommend',
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColors.textDark,
              ),
              textAlign: TextAlign.left,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              padding: EdgeInsets.only(top: 8),
              itemCount: FoodItem.items.length,
              itemBuilder: (context, index) {
                FoodItem foodItem = FoodItem.items[index];
                return _buildRecommendedItem(foodItem);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendedItem(FoodItem foodItem) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(foodItem.thumbnail ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 18,
          right: -1.5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.orangeBase,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
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
        Positioned(
          top: 10,
          left: 14,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: AppColors.bgLight,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    foodItem.rating.toStringAsFixed(1),
                    style: TextStyle(
                      fontFamily: 'LeagueSpartan',
                      fontSize: 14,
                      color: AppColors.textDark,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 6),
                Image.asset(
                  'assets/images/icons/star-icon.png',
                  width: 12,
                  height: 12,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 68,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.bgLight,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                size: 12,
                color: AppColors.orangeBase,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
