class OfferItem {
  final String title;
  final String offerPrice;
  final String thumbnail;

  const OfferItem({
    required this.title,
    required this.offerPrice,
    required this.thumbnail,
  });

  static List<OfferItem> items = [
    OfferItem(
      title: 'Experience our delicious new dish',
      offerPrice: '30% Off',
      thumbnail:
          'https://images.unsplash.com/photo-1626844131082-256783844137?q=80&w=3135&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    OfferItem(
      title: 'Great culinary experience',
      offerPrice: 'Buy 1 get 1 Free',
      thumbnail: 'https://images.unsplash.com/photo-1513104890138-7c749659a591',
    ),
    OfferItem(
      title: 'Taste the freshness today',
      offerPrice: '20% Off',
      thumbnail:
          'https://images.unsplash.com/photo-1580476262798-bddd9f4b7369?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    OfferItem(
      title: 'Healthy and tasty choice',
      offerPrice: 'Free Drink Included',
      thumbnail: 'https://images.unsplash.com/photo-1550547660-d9450f859349',
    ),
    OfferItem(
      title: 'Try our chef’s special wrap',
      offerPrice: 'Limited Time Offer',
      thumbnail:
          'https://images.unsplash.com/photo-1580476262798-bddd9f4b7369?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];
}
