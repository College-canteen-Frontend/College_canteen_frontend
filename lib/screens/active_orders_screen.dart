import 'package:flutter/material.dart';
import 'order_tracking_screen.dart';

class ActiveOrdersScreen extends StatelessWidget {
  const ActiveOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF7A00),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Active Orders",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            orderCard(
              context: context, // Pass context here
              orderId: "#ORD123",
              time: "Today, 1:30 PM",
              status: "Preparing",
              statusColor: Colors.orange,
              received: true,
              preparing: true,
              ready: false,
              buttonText: "Track Order",
            ),
            const SizedBox(height: 15),
            orderCard(
              context: context, // Pass context here
              orderId: "#ORD124",
              time: "Today, 2:10 PM",
              status: "Ready for Pickup",
              statusColor: Colors.green,
              received: true,
              preparing: true,
              ready: true,
              buttonText: "View Details",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: const Color(0xFFFF7A00),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget orderCard({
    required BuildContext context, // Add context as a required parameter
    required String orderId,
    required String time,
    required String status,
    required Color statusColor,
    required bool received,
    required bool preparing,
    required bool ready,
    required String buttonText,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order $orderId",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: statusColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              step(received),
              line(preparing),
              step(preparing),
              line(ready),
              step(ready),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Received"),
              Text("Preparing"),
              Text("Ready"),
            ],
          ),
          const SizedBox(height: 18),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xFFFF7A00),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderTrackingScreen(),
                  ),
                );
              },
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Color(0xFFFF7A00),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget step(bool active) {
    return CircleAvatar(
      radius: 11,
      backgroundColor: active ? Colors.green : Colors.grey.shade300,
      child: active
          ? const Icon(
              Icons.check,
              color: Colors.white,
              size: 15,
            )
          : null,
    );
  }

  Widget line(bool active) {
    return Expanded(
      child: Container(
        height: 3,
        color: active ? Colors.green : Colors.grey.shade300,
      ),
    );
  }
}
