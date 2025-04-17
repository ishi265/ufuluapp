import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  final String title;
  final double rating;
  final int reviews;
  final String imagePath;

  const CourseWidget(
      {super.key,
      required this.title,
      required this.rating,
      required this.reviews,
      required this.imagePath});

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
        SizedBox(
          height: 4,
        ),
        Text(
          "Power Dynamics",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Image.asset("images/star.png", width: 18, height: 18),
            SizedBox(
              width: 10,
            ),
            Text(
              "4.6",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "[26]",
              style: TextStyle(fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}
