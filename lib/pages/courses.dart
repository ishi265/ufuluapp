import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Iconsax.arrow_right_1),
        title: Text("Courses"),
      ),
    );
  }
}
