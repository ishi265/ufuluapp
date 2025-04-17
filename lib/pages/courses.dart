import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/widgets/courseWidget.dart';

class Courses extends StatelessWidget {
  const Courses({
    super.key,
  });

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Featured Courses",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 36),
            Expanded(
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return CourseWidget(
                    title: "Power Dynamics",
                    rating: 3.9,
                    reviews: 30,
                    imagePath: "images/coursename.jpg",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
