import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Iconsax.arrow_left),
        title: Text("Courses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Featured Courses",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
