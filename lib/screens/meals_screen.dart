import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../data/dummy_data.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/food_tile.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Meals",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...DummyData.todaysSpecial.map(
            (food) => FoodTile(food: food),
          ),
          const SizedBox(height: 10),
          ...DummyData.popularItems
              .where((food) => food.category == "Meals")
              .map(
                (food) => FoodTile(food: food),
              ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
