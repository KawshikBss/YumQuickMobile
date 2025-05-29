class FoodItem {
  final String title;
  final String? thumbnail;
  final double price;
  final double rating;

  const FoodItem({
    required this.title,
    this.thumbnail,
    required this.price,
    required this.rating,
  });

  static const List<FoodItem> items = [
    FoodItem(
      title: 'Margherita Pizza',
      thumbnail: 'https://images.unsplash.com/photo-1513104890138-7c749659a591',
      price: 8.99,
      rating: 4.5,
    ),
    FoodItem(
      title: 'Cheeseburger',
      thumbnail: 'https://images.unsplash.com/photo-1550547660-d9450f859349',
      price: 6.49,
      rating: 4.2,
    ),
    FoodItem(
      title: 'Caesar Salad',
      thumbnail: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
      price: 5.99,
      rating: 4.0,
    ),
    FoodItem(
      title: 'Spaghetti Bolognese',
      thumbnail:
          'https://images.unsplash.com/photo-1626844131082-256783844137?q=80&w=3135&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 9.49,
      rating: 4.6,
    ),
    FoodItem(
      title: 'Chicken Tikka Masala',
      thumbnail:
          'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 10.99,
      rating: 4.7,
    ),
    FoodItem(
      title: 'Sushi Platter',
      thumbnail:
          'https://images.unsplash.com/photo-1676037150408-4b59a542fa7c?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 12.99,
      rating: 4.8,
    ),
    FoodItem(
      title: 'Pad Thai',
      thumbnail:
          'https://images.unsplash.com/photo-1655091273851-7bdc2e578a88?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGFkJTIwdGhhaXxlbnwwfHwwfHx8MA%3D%3D',
      price: 8.49,
      rating: 4.4,
    ),
    FoodItem(
      title: 'French Fries',
      thumbnail:
          'https://images.unsplash.com/photo-1598679253544-2c97992403ea?q=80&w=3072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 3.49,
      rating: 4.1,
    ),
    FoodItem(
      title: 'Grilled Salmon',
      thumbnail:
          'https://images.unsplash.com/photo-1580476262798-bddd9f4b7369?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 14.99,
      rating: 4.9,
    ),
    FoodItem(
      title: 'Chocolate Cake',
      thumbnail:
          'https://plus.unsplash.com/premium_photo-1715015440855-48e019b6faa1?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fENob2NvbGF0ZSUyMENha2V8ZW58MHx8MHx8fDA%3D',
      price: 4.99,
      rating: 4.3,
    ),
  ];
}
