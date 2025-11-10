import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Royal Blue (mendekati 322)
  static const Color primaryBlue = Color(0xFF2A52BE); 

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel('Terima Saldo', '+ Rp5.000.000', 'Pemasukan'),
      TransactionModel('Tiket Kapal Ferry', '- Rp4000.000', 'Healing'),
      TransactionModel('Isi Saldo', '+ Rp7.000.000', 'Tabungan'),
      TransactionModel('Alfamart', '- Rp2.000.0000', 'Belanja Bulanan'),
      TransactionModel('Wifi', '- Rp.200.000', 'Belanja Bulanan'),
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade50, // Latar belakang abu-abu sangat muda
      appBar: AppBar(
        title: const Text('Kelola Keuangan'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Title =====
            const Text(
              'Kartu Saya',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: primaryBlue // Biru
              ),
            ),
            const SizedBox(height: 12),

            // ===== Banner Cards (ATM Cards) =====
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const AtmCard(
                    bankName: 'Bank BRI',
                    cardNumber: ' 002 *****',
                    balance: 'Rp10.000.000',
                    color1: primaryBlue, 
                    color2: Color(0xFF5B7FD8),
                    backgroundImagePath: 'assets/images/atm_bri.jpg', 
                  ),
                  const AtmCard(
                    bankName: 'Bank Mandiri ',
                    cardNumber: '008 *****',
                    balance: 'Rp7.350.000',
                    // Skema warna Abu-abu ke Abu-abu gelap
                    color1: Color.fromARGB(255, 32, 158, 241), 
                    color2: Color.fromARGB(255, 104, 196, 238), 
                    backgroundImagePath: 'assets/images/atm_mandiri.jpeg',
                  ),
                  const AtmCard(
                    bankName: 'Bank SeaBank',
                    cardNumber: '535 *****',
                    balance: 'Rp9.530.000',
                    // Skema warna Abu-abu ke Abu-abu gelap
                    color1: Color.fromARGB(255, 32, 158, 241), 
                    color2: Color.fromARGB(255, 104, 196, 238), 
                    backgroundImagePath: 'assets/images/atm_seabank.png',
                  ),
                  const AtmCard(
                    bankName: 'Bank BCA',
                    cardNumber: '014 *****',
                    balance: 'Rp4.730.000',
                    // Skema warna Abu-abu ke Abu-abu gelap
                    color1: Color.fromARGB(255, 32, 158, 241), 
                    color2: Color.fromARGB(255, 104, 196, 238), 
                    backgroundImagePath: 'assets/images/atm_bca.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ===== Grid Menu =====
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                GridMenuItem(icon: Icons.wallet, label: 'Pemasukan'),
                GridMenuItem(icon: Icons.flight, label: 'Healing'),
                GridMenuItem(icon: Icons.shopping_bag, label: 'Belanja Bulanan'),
                GridMenuItem(icon: Icons.savings, label: 'Tabungan'),
              ],
            ),

            const SizedBox(height: 24),

            // ===== Transaction List =====
            const Text(
              'History Transaksi',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: primaryBlue // Biru
              ),
            ),
            const SizedBox(height: 8),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItem(transaction: transactions[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}