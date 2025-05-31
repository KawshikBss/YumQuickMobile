import 'package:flutter/material.dart';
import 'package:yumquick/features/home/models/food_item.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class CartMenuSidebar extends StatelessWidget {
  const CartMenuSidebar({super.key});

  List<FoodItem> get cartItems => FoodItem.items.sublist(0, 6);

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icons/sidebar/cart-icon.png',
                        width: 40,
                        height: 40,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Cart',
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
                    padding: EdgeInsets.only(top: 38, bottom: 18),
                    child: Divider(color: AppColors.yellowBase),
                  ),
                  Text(
                    cartItems.isEmpty
                        ? 'Your cart is empty'
                        : 'You have ${cartItems.length} items in the cart',
                    style: TextStyle(
                      fontFamily: 'LeagueSpartan',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textLight,
                    ),
                  ),
                  if (cartItems.isEmpty) _emptyCart() else _myCart(cartItems),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyCart() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 114,
            height: 114,
            margin: EdgeInsets.only(top: 160, right: 36, bottom: 46, left: 36),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.orangeSecondary),
            ),
            child: Icon(Icons.add, size: 46, color: AppColors.orangeSecondary),
          ),
          SizedBox(
            width: 158,
            child: Text(
              'Want to add something?',
              style: TextStyle(
                fontFamily: 'LeagueSpartan',
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: AppColors.textLight,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _myCart(List<FoodItem> items) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [...items.map((item) => _cartItem(item))],
              ),
            ),
          ),
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                '\$32.00',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Tax and Fees',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                '\$5.00',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                '\$3.00',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(color: AppColors.orangeSecondary),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                '\$40.00',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textLight,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          const SizedBox(height: 22),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.yellowBase,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Checkout',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.orangeBase,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cartItem(FoodItem item) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Expanded(
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                        item.thumbnail ??
                            'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 60,
                            child: Text(
                              item.title,
                              style: TextStyle(
                                fontFamily: 'LeagueSpartan',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textLight,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text(
                            '\$${item.price}',
                            style: TextStyle(
                              fontFamily: 'LeagueSpartan',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: AppColors.textLight,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            DateTime.now()
                                .toLocal()
                                .toString()
                                .split(' ')
                                .first
                                .replaceAll('-', '/'),
                            style: TextStyle(
                              fontFamily: 'LeagueSpartan',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textLight,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            DateTime.now()
                                .toLocal()
                                .toString()
                                .split(' ')
                                .last
                                .substring(0, 5),
                            style: TextStyle(
                              fontFamily: 'LeagueSpartan',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textLight,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.right,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.remove_circle,
                                  size: 16,
                                  color: AppColors.bgLight,
                                ),
                              ),
                              const SizedBox(width: 6),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontFamily: 'LeagueSpartan',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textLight,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.right,
                              ),
                              const SizedBox(width: 6),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.add_circle,
                                  size: 16,
                                  color: AppColors.bgLight,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(color: AppColors.orangeSecondary),
      ],
    );
  }
}
