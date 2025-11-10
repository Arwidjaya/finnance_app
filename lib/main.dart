import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FinanceMateApp());
}

class FinanceMateApp extends StatelessWidget {
  const FinanceMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Royal Blue (mendekati 322)
    const Color primaryBlue = Color(0xFF2A52BE); 
    
    return MaterialApp(
      title: 'Kelola Keuangan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Ganti warna utama menjadi Biru
        colorSchemeSeed: primaryBlue, 
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white,
        )
      ),
      home: const SplashScreen(),
    );
  }
}