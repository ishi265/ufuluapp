import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CourseOutlineWidget extends StatelessWidget {
  const CourseOutlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Course Overview",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 24),
              Text(
                  "A healthy relationship is one based on mutual respect, equality, consent, and safety—key factors in preventing SGBV. In Malawi, where cultural norms sometimes reinforce gender inequality, promoting healthy relationships is crucial to reducing violence.",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 36),
              Text("Course Overview",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.1)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Course Introdution",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Image.asset(
                                      "images/accept.png",
                                      width: 15,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "images/play-button.png",
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Play Video"),
                                      ],
                                    ),
                                    Text("2 min")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
            ],
          ),
        )
      ],
    );
  }
}
