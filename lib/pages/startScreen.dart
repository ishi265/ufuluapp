import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              Container(
                width: double.infinity,
                height: 44,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continiue",
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Iconsax.arrow_right_1,
                      size: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
