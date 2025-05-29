class FoodCategory {
  final String title;
  final String? icon;
  const FoodCategory({required this.title, this.icon});

  static const List<FoodCategory> items = [
    FoodCategory(title: 'Snacks', icon: 'assets/images/categories/Snacks.png'),
    FoodCategory(title: 'Meal', icon: 'assets/images/categories/Meals.png'),
    FoodCategory(title: 'Vegan', icon: 'assets/images/categories/Vegan.png'),
    FoodCategory(
      title: 'Dessert',
      icon: 'assets/images/categories/Desserts.png',
    ),
    FoodCategory(title: 'Drinks', icon: 'assets/images/categories/Drinks.png'),
  ];
}
