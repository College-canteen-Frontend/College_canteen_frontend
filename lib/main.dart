import 'package:flutter/material.dart';

import 'screens/order_success_screen.dart';
import 'screens/active_orders_screen.dart';
import 'screens/order_tracking_screen.dart';

void main() {
  runApp(const CampusBitesApp());
}

class CampusBitesApp extends StatelessWidget {
  const CampusBitesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Bites',

      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF7A00),
        ),
      ),

      // First Screen
      home: const OrderSuccessScreen(),

      // Named Routes
      routes: {
        '/orderSuccess': (context) => const OrderSuccessScreen(),
        '/activeOrders': (context) => const ActiveOrdersScreen(),
        '/orderTracking': (context) => const OrderTrackingScreen(),
      },
    );
  }
}
