class FoodModel {
  final String id;
  final String name;
  final String image;
  final String category;
  final String description;
  final double price;
  final double rating;
  final bool isPopular;
  final bool isTodaySpecial;

  FoodModel({
    required this.id,
    required this.name,
    required this.image,
    required this.category,
    required this.description,
    required this.price,
    required this.rating,
    required this.isPopular,
    required this.isTodaySpecial,
  });
}
