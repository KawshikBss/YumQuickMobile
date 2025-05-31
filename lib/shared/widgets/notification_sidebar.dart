import 'package:flutter/material.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class NotificationSidebar extends StatelessWidget {
  const NotificationSidebar({super.key});

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icons/sidebar/notification-icon.png',
                          width: 22,
                          height: 31,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontFamily: 'LeagueSpartan',
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: AppColors.textLight,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 38),
                      child: Divider(color: AppColors.yellowSecondary),
                    ),
                    _sideBarItem(
                      'cookware',
                      'We have added a product you might like.',
                    ),
                    _sideBarItem(
                      'heart',
                      'One of your favorite is on promotion.',
                    ),
                    _sideBarItem('bag', 'Your order has been delivered.'),
                    _sideBarItem('delivery', 'The delivery is on his way.'),
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
          margin: const EdgeInsets.only(top: 22, bottom: 21),
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
              SizedBox(
                width: 110,
                child: Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'LeagueSpartan',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textLight,
                  ),
                  softWrap: true,
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
