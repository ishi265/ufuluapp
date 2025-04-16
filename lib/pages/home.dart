import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _breathingController;
  late Animation<double> _breathingAnimation;
  String? selectedLanguage = 'Chichewa';

  @override
  void initState() {
    super.initState();

    _breathingController = AnimationController(
      duration: const Duration(milliseconds: 2000), // 2 second cycle
      vsync: this,
    )..repeat(reverse: true); // Automatically reverses and repeats

    // Breathing animation (subtle scale change)
    _breathingAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(
        parent: _breathingController,
        curve: Curves.easeInOutSine,
      ),
    );
  }

  @override
  void dispose() {
    _breathingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(38),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "John Doe",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  DropdownButton<String>(
                    value: selectedLanguage,
                    icon: const Icon(Iconsax.arrow_down_1),
                    iconSize: 20,
                    elevation: 4,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    underline: Container(height: 0),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLanguage = newValue;
                      });
                    },
                    items: <String>['Chichewa', 'English']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              AnimatedBuilder(
                animation: _breathingController,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _breathingAnimation.value,
                    child: Container(
                      width: 240,
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(260),
                        color: Theme.of(context).colorScheme.primary,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            spreadRadius: 1,
                            offset: const Offset(0, 3),
                          )
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          "images/telephone-call.png",
                          width: 98,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
