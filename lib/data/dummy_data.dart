import '../models/food_model.dart';
import '../models/category_model.dart';

class DummyData {
  //---------------- Categories ----------------//

  static List<CategoryModel> categories = [
    CategoryModel(
      id: "1",
      name: "Meals",
      image: "assets/images/meals.jpg",
    ),
    CategoryModel(
      id: "2",
      name: "Snacks",
      image: "assets/images/snacks.jpg",
    ),
    CategoryModel(
      id: "3",
      name: "Beverages",
      image: "assets/images/beverages.jpg",
    ),
    CategoryModel(
      id: "4",
      name: "Desserts",
      image: "assets/images/desserts.jpg",
    ),
  ];

  //---------------- Today's Special ----------------//

  //---------------- Today's Special ----------------//

  static List<FoodModel> todaysSpecial = [
    FoodModel(
      id: "1",
      name: "Lemon Rice",
      image: "assets/images/lemon_rice.jpg",
      category: "Meals",
      description: "Traditional South Indian Lemon Rice",
      price: 60,
      rating: 4.7,
      isPopular: true,
      isTodaySpecial: true,
    ),
    FoodModel(
      id: "2",
      name: "Samosa",
      image: "assets/images/samosa.jpg",
      category: "Snacks",
      description: "Hot and Crispy Samosa",
      price: 20,
      rating: 4.8,
      isPopular: true,
      isTodaySpecial: true,
    ),
    FoodModel(
      id: "3",
      name: "Veg Sandwich",
      image: "assets/images/veg_sandwich.jpg",
      category: "Snacks",
      description: "Fresh Veg Sandwich",
      price: 70,
      rating: 4.6,
      isPopular: true,
      isTodaySpecial: true,
    ),
    FoodModel(
      id: "4",
      name: "Brownie",
      image: "assets/images/brownie.jpg",
      category: "Desserts",
      description: "Soft Chocolate Brownie",
      price: 50,
      rating: 4.9,
      isPopular: true,
      isTodaySpecial: true,
    ),
    FoodModel(
      id: "5",
      name: "Veg Puff",
      image: "assets/images/veg_puff.jpg",
      category: "Snacks",
      description: "Freshly Baked Veg Puff",
      price: 25,
      rating: 4.7,
      isPopular: true,
      isTodaySpecial: true,
    ),
  ];

  //---------------- Popular Items ----------------//

  //---------------- Popular Items ----------------//

  static List<FoodModel> popularItems = [
    FoodModel(
      id: "1",
      name: "Paneer Butter Masala",
      image: "assets/images/paneer_butter_masala.jpg",
      category: "Meals",
      description: "Creamy Paneer Butter Masala",
      price: 130,
      rating: 4.9,
      isPopular: true,
      isTodaySpecial: false,
    ),
    FoodModel(
      id: "2",
      name: "Veg Pulao",
      image: "assets/images/veg_pulao.jpg",
      category: "Meals",
      description: "Delicious Veg Pulao",
      price: 90,
      rating: 4.7,
      isPopular: true,
      isTodaySpecial: false,
    ),
    FoodModel(
      id: "3",
      name: "Chicken Biryani",
      image: "assets/images/biryani.jpg",
      category: "Meals",
      description: "Spicy Chicken Biryani",
      price: 120,
      rating: 4.8,
      isPopular: true,
      isTodaySpecial: false,
    ),
    FoodModel(
      id: "4",
      name: "Paneer Wrap",
      image: "assets/images/paneer_wrap.jpg",
      category: "Snacks",
      description: "Fresh Paneer Wrap",
      price: 90,
      rating: 4.7,
      isPopular: true,
      isTodaySpecial: false,
    ),
  ];
}
