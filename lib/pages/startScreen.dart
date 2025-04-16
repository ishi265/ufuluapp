import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/widgets/ButtonWidget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "images/startscreen.png",
                width: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "uFulu",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "A Comprehensive GBV Prevention and\nResponse Aplication",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 50,
              ),
              ButtonWidget(text: "Continue", icon: Iconsax.arrow_right_1),
            ],
          ),
        ),
      ),
    );
  }
}
