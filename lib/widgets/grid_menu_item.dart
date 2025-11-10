import 'package:flutter/material.dart';

class GridMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const GridMenuItem({super.key, required this.icon, required this.label});

  // Royal Blue
  static const Color primaryBlue = Color(0xFF2A52BE);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Latar belakang Putih
        borderRadius: BorderRadius.circular(16),
        // Batas (Border) abu-abu tipis
        border: Border.all(color: Colors.grey.shade200, width: 1), 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Bayangan abu-abu
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon berwarna Biru
          Icon(icon, size: 36, color: primaryBlue), 
          const SizedBox(height: 8),
          // Label berwarna abu-abu gelap
          Text(
            label, 
            style: const TextStyle(
              fontWeight: FontWeight.w600, 
              color: Color(0xFF424242) // Abu-abu gelap
            )
          ), 
        ],
      ),
    );
  }
}