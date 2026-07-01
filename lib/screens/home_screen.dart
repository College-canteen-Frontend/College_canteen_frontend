import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../data/dummy_data.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/category_card.dart';
import '../widgets/food_card.dart';
import '../widgets/greeting_section.dart';
import '../widgets/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18),

                /// Greeting
                const GreetingSection(),

                const SizedBox(height: 20),

                /// Search
                const SearchBarWidget(),

                const SizedBox(height: 28),

                /// Today's Specials
                _sectionTitle("Today's Specials"),

                const SizedBox(height: 14),

                SizedBox(
                  height: 240,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: DummyData.todaysSpecial.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 14),
                    itemBuilder: (context, index) {
                      return FoodCard(food: DummyData.todaysSpecial[index]);
                    },
                  ),
                ),

                const SizedBox(height: 26),

                /// Categories
                _sectionTitle("Browser Categories"),

                const SizedBox(height: 16),

                SizedBox(
                  height: 95,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: DummyData.categories.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 18),
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        category: DummyData.categories[index],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 28),

                /// Popular
                _sectionTitle("Popular Items"),

                const SizedBox(height: 14),

                SizedBox(
                  height: 240,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: DummyData.popularItems.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 14),
                    itemBuilder: (context, index) {
                      return FoodCard(
                        food: DummyData.popularItems[index],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
      ),
    );
  }
}
