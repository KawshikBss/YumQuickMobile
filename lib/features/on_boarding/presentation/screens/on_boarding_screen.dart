import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yumquick/features/on_boarding/models/on_boarding_item.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<OnBoardingItem> items = [
    OnBoardingItem(
      title: 'Order for Food',
      content:
          'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
      image:
          'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=2881&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      icon: 'assets/images/onboarding/on-boarding1.png',
    ),
    OnBoardingItem(
      title: 'Easy Payment',
      content:
          'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
      image:
          'https://images.unsplash.com/photo-1598268121084-c8f7126e0cef?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      icon: 'assets/images/onboarding/on-boarding2.png',
    ),
    OnBoardingItem(
      title: 'Fast Delivery',
      content:
          'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
      image:
          'https://plus.unsplash.com/premium_photo-1674327105076-36c4419864cf?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      icon: 'assets/images/onboarding/on-boarding3.png',
    ),
  ];

  _handleNext() {
    int newIndex = _currentIndex + 1;
    if (newIndex < items.length) {
      setState(() {
        _currentIndex = newIndex;
      });
      _pageController.animateToPage(
        newIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    } else {
      context.go('/welcome');
    }
  }

  _jumpTo(int index) {
    if (index >= 0 && index < items.length) {
      setState(() {
        _currentIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBase,
      body: SafeArea(
        child: SizedBox.expand(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.network(
                      item.image,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: _buildBottomCard(item),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBottomCard(OnBoardingItem item) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: Container(
        key: ValueKey(item.title), // Important for AnimatedSwitcher
        width: double.infinity,
        height: 360,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.bgLight,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/yumquick-logo2.png'),
              image: AssetImage(item.icon),
              fadeInDuration: Duration(milliseconds: 400),
              height: 60,
            ),
            SizedBox(height: 12),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.orangeBase,
              ),
            ),
            SizedBox(height: 10),
            AnimatedOpacity(
              duration: Duration(milliseconds: 400),
              opacity: 1.0,
              child: Text(
                item.content,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
                  items.map((item) {
                    int index = items.indexOf(item);
                    bool selected = index == _currentIndex;
                    return GestureDetector(
                      onTap: () {
                        _jumpTo(index);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: Container(
                          width: 20,
                          height: 4,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color:
                                selected
                                    ? AppColors.orangeBase
                                    : AppColors.yellowSecondary,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
            ),
            ElevatedButton(
              onPressed: _handleNext,
              style: ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size.fromWidth(134)),
                backgroundColor: WidgetStatePropertyAll(AppColors.orangeBase),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.only(top: 14, bottom: 8),
                ),
              ),
              child: Text(
                _currentIndex < items.length - 1 ? 'Next' : 'Get Started',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  color: AppColors.bgLight,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
