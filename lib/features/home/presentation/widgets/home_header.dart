import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.yellowBase,
      expandedHeight: MediaQuery.of(context).size.height * 0.2,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(
            top: 62,
            right: 30,
            bottom: 18,
            left: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _searchField(),
                  const SizedBox(width: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _iconButton('assets/images/icons/cart-icon.png'),
                      const SizedBox(width: 8),
                      _iconButton('assets/images/icons/bell-icon.png'),
                      const SizedBox(width: 8),
                      _iconButton('assets/images/icons/user-icon.png'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  color: AppColors.textLight,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                "Rise and shine! It's breakfast time",
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  color: AppColors.orangeBase,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchField() {
    return Expanded(
      child: Container(
        height: 38,
        padding: const EdgeInsets.only(left: 12, right: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  isDense: true,
                  hintText: "Search",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintStyle: TextStyle(
                    fontFamily: 'LeagueSpartan',
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: AppColors.textGrey,
                  ),
                ),
                style: const TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  color: AppColors.textDark,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.orangeBase,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: const Icon(Icons.tune, color: Colors.white, size: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconButton(String assetPath, {Function? onTap}) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        width: 26,
        height: 26,
        decoration: BoxDecoration(
          color: AppColors.bgLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Image.asset(assetPath)),
      ),
    );
  }
}
