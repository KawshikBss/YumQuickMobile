import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class ProfileSidebar extends StatelessWidget {
  const ProfileSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: AppColors.orangeSecondary,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(
                left: 33,
                right: 41,
                top: 71,
                bottom: 96,
              ),
              decoration: BoxDecoration(
                color: AppColors.orangeBase,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30),
                ),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromARGB(25, 0, 0, 0),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(
                            'https://static01.nyt.com/images/2022/06/01/business/01musk-rto1/01musk-rto1-mediumSquareAt3X-v2.jpg',
                          ),
                          radius: 25,
                          backgroundColor: AppColors.orangeSecondary,
                        ),
                        const SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elon Musk',
                              style: TextStyle(
                                fontFamily: 'LeagueSpartan',
                                color: AppColors.textLight,
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'musk_elon@spacex.com',
                              style: TextStyle(
                                fontFamily: 'LeagueSpartan',
                                color: AppColors.yellowSecondary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 46),
                    _sideBarItem('bag', 'My Orders'),
                    _sideBarItem('user', 'My Profile'),
                    _sideBarItem('location', 'Delivery Address'),
                    _sideBarItem('card', 'Payment Methods'),
                    _sideBarItem('contact', 'Contact Us'),
                    _sideBarItem('faq', 'Help & FAQs'),
                    _sideBarItem('setting', 'Settings'),
                    const SizedBox(height: 46),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 9),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.bgLight,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/images/icons/sidebar/logout.png',
                              width: 16,
                              height: 26,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(width: 32),
                          Text(
                            'Log Out',
                            style: TextStyle(
                              fontFamily: 'LeagueSpartan',
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: AppColors.yellowSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sideBarItem(String icon, String label) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 11, bottom: 18),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: BoxDecoration(
                  color: AppColors.bgLight,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/icons/sidebar/$icon.png',
                  width: 16,
                  height: 26,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 32),
              Text(
                label,
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.yellowSecondary,
                ),
              ),
            ],
          ),
        ),
        Divider(color: AppColors.yellowSecondary),
      ],
    );
  }
}
