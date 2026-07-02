import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Order History"),
      ),

      // ✅ IMPORTANT FIX → ListView (no overflow)
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          orderCard(
              "#ORD1234",
              "₹130",
              "12 Jun 2026, 12:30 PM",
              "Veg sandwich, Cold Coffee",
              "https://images.unsplash.com/photo-1586190848861-99aa4a171e90",
              4),
          orderCard("#ORD1220", "₹120", "10 Jun 2026, 01:15 PM", "Burger Combo",
              "https://images.unsplash.com/photo-1550547660-d9450f859349", 4),
          orderCard(
              "#ORD1210",
              "₹90",
              "08 Jun 2026, 11:45 AM",
              "Masala Dosa, Tea",
              "https://images.unsplash.com/photo-1601050690597-df0568f70950",
              3),
        ],
      ),
    );
  }

  Widget orderCard(String id, String price, String date, String items,
      String image, int rating) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(date, style: const TextStyle(fontSize: 12)),
                  Text(id, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(items),
                  const SizedBox(height: 5),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        size: 14,
                        color: index < rating ? Colors.amber : Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(price,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                const Icon(Icons.delete)
              ],
            )
          ],
        ),
      ),
    );
  }
}
