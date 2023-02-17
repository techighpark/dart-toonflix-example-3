import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/MyCard.dart';

class Player {
  String? name;
  Player({this.name});
}

void main() {
  // root app
  runApp(App());
}

class App extends StatelessWidget {
  var nico = Player();

  App({super.key});
  // dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Techigh',
                          style: TextStyle(
                              color: Colors.deepOrange[400],
                              fontWeight: FontWeight.w800,
                              fontSize: 28),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.deepOrange[400]!.withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 44),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: (Colors.deepOrange[400])!,
                      textColor: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    const Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2000),
                      textColor: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  currenyIcon: Icons.euro_rounded,
                  isInverted: false,
                  offset: Offset(0, 0),
                ),
                const MyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 783',
                  currenyIcon: Icons.currency_bitcoin,
                  isInverted: true,
                  offset: Offset(0, -20),
                ),
                const MyCard(
                  name: 'Dollor',
                  code: 'USD',
                  amount: '10 389',
                  currenyIcon: Icons.monetization_on_outlined,
                  isInverted: false,
                  offset: Offset(0, -40),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
