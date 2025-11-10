import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionItem({super.key, required this.transaction});

  // Royal Blue
  static const Color primaryBlue = Color(0xFF2A52BE);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, 
      color: Colors.white, // Putih
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // Batas abu-abu muda
        side: BorderSide(color: Colors.grey.shade300, width: 1) 
      ),
      margin: const EdgeInsets.symmetric(vertical: 6), // Margin lebih besar
      child: ListTile(
        // Ikon Biru
        leading: Icon(Icons.monetization_on, color: primaryBlue), 
        title: Text(
          transaction.title,
          style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        // Subtitle abu-abu
        subtitle: Text(
          transaction.category,
          style: const TextStyle(color: Colors.grey), 
        ),
        trailing: Text(
          transaction.amount,
          style: TextStyle(
            color: transaction.amount.startsWith('-')
                ? Colors.red.shade700
                : Colors.green.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}