import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yumquick/features/home/models/offer_item.dart';
import 'package:yumquick/features/home/presentation/widgets/offer_slider_item.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class OffersSection extends StatefulWidget {
  const OffersSection({super.key});

  @override
  State<OffersSection> createState() => _OffersSectionState();
}

class _OffersSectionState extends State<OffersSection> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          CarouselSlider(
            items:
                OfferItem.items
                    .map(
                      (offerItem) => OfferSliderItem(
                        reverse: OfferItem.items.indexOf(offerItem) % 2 != 0,
                        offerItem: offerItem,
                      ),
                    )
                    .toList(),
            carouselController: _carouselController,
            options: CarouselOptions(
              viewportFraction: 1,
              height: 152,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 5),
          _carouselDots(),
        ],
      ),
    );
  }

  Widget _carouselDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          OfferItem.items
              .asMap()
              .entries
              .map(
                (entry) => GestureDetector(
                  onTap: () {
                    _carouselController.animateToPage(entry.key);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 20,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:
                          _currentIndex == entry.key
                              ? AppColors.orangeBase
                              : AppColors.yellowSecondary,
                    ),
                  ),
                ),
              )
              .toList(),
    );
  }
}
