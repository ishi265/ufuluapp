import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "images/startscreen.png",
              width: 250,
            ),
            Text(
              "uFulu",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
            Text(
              "A Comprehensive GBV Prevention and\nResponse Aplication",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
