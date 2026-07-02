import 'package:flutter/material.dart';
import 'feedback_page.dart';
import 'order_history_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Raj Kumar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("23CS005"),
                    Text("Computer Science 3rd yr"),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.edit, color: Colors.orange)
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const FeedbackPage(),
                      ),
                    );
                  },
                  child: boxItem(Icons.feedback, "Feed Back"),
                ),
                boxItem(Icons.favorite, "Wishlist"),
                boxItem(Icons.help, "Help"),
              ],
            ),
            const SizedBox(height: 25),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Orders history"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const OrderHistoryPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notification"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text("Logout", style: TextStyle(color: Colors.red)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget boxItem(IconData icon, String text) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(height: 10),
          Text(text, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
