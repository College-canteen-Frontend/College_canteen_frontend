import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  String paymentMethod = "UPI";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            value: "UPI",
            groupValue: paymentMethod,
            title: Text(
              "UPI",
              style: GoogleFonts.poppins(),
            ),
            onChanged: (value) {
              setState(() {
                paymentMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            value: "Cash on Pickup",
            groupValue: paymentMethod,
            title: Text(
              "Cash on Pickup",
              style: GoogleFonts.poppins(),
            ),
            onChanged: (value) {
              setState(() {
                paymentMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            value: "Wallet",
            groupValue: paymentMethod,
            title: Text(
              "Wallet",
              style: GoogleFonts.poppins(),
            ),
            onChanged: (value) {
              setState(() {
                paymentMethod = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
