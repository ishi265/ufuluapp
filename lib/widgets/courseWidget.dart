import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                "images/coursename.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Course",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
