import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/pages/courseRoadMap.dart';
import 'package:ufuluapp/widgets/courseWidget.dart';

class Courses extends StatelessWidget {
  const Courses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courses = [
      {
        "title": "Power Dynamics",
        "rating": 5.0,
        "reviews": 26,
        "imagePath": "images/coursename.jpg"
      },
      {
        "title": "Health Relationships",
        "rating": 3.9,
        "reviews": 30,
        "imagePath": "images/coursename.jpg"
      },
      {
        "title": "SEAH",
        "rating": 3.6,
        "reviews": 44,
        "imagePath": "images/coursename.jpg"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Navigator.pop(context),
        ),
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
                itemCount: courses.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return CourseWidget(
                    title: courses[index]['title'],
                    rating: courses[index]['rating'],
                    reviews: courses[index]['reviews'],
                    imagePath: courses[index]['imagePath'],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseRoadMap()));
                    },
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
