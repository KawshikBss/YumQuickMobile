import 'package:flutter/material.dart';
import 'package:yumquick/features/home/models/offer_item.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class OfferSliderItem extends StatelessWidget {
  final bool reverse;
  final OfferItem offerItem;
  const OfferSliderItem({
    super.key,
    this.reverse = false,
    required this.offerItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.orangeBase,
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          reverse
              ? Row(
                children: [
                  _buildOfferItemImage(offerItem),
                  _buildOfferItemContent(offerItem),
                ],
              )
              : Row(
                children: [
                  _buildOfferItemContent(offerItem),
                  _buildOfferItemImage(offerItem),
                ],
              ),
          Positioned(
            top: reverse ? null : -36,
            bottom: reverse ? -36 : null,
            left: reverse ? 38 : 0,
            right: reverse ? 0 : 38,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.yellowBase, width: 8),
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: reverse ? null : -14,
            right: reverse ? -14 : null,
            bottom: reverse ? null : -23,
            top: reverse ? -23 : null,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.yellowBase, width: 8),
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferItemImage(OfferItem offerItem) {
    return Expanded(
      child: Image.network(offerItem.thumbnail, height: 152, fit: BoxFit.cover),
    );
  }

  Widget _buildOfferItemContent(OfferItem offerItem) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 26, right: 12, bottom: 20, left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              offerItem.title,
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontSize: 16,
                color: AppColors.textLight,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              offerItem.offerPrice,
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontSize: 20,
                color: AppColors.textLight,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
