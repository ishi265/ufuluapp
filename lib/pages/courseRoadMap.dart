import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CourseRoadMap extends StatelessWidget {
  const CourseRoadMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Iconsax.arrow_left),
        title: Text("Health Relationships"),
      ),
    );
  }
}