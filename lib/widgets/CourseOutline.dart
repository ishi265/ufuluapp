import 'package:flutter/material.dart';
import 'package:ufuluapp/pages/assignment.dart';
import 'package:ufuluapp/pages/video.dart';
import 'package:ufuluapp/widgets/ModuleWidget.dart';

class CourseOutlineWidget extends StatelessWidget {
  const CourseOutlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> modules = [
      {
        'courseName': "Introduction to Course",
        'imagePath': "images/play-button.png",
        'videoDuration': "2min",
        'imageDone': "images/accept.png",
        'wordsAction': "Play Video"
      },
      {
        'courseName': "About Course",
        'imagePath': "images/open-book.png",
        'videoDuration': "6min",
        'imageDone': null,
        'wordsAction': "Reading"
      },
      {
        'courseName': "Assignment One",
        'imagePath': "images/contract.png",
        'videoDuration': "10min",
        'imageDone': null,
        'wordsAction': "Write Exam"
      },
    ];
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
                itemCount: modules.length,
                itemBuilder: (context, index) => ModuleWidget(
                    courseName: modules[index]['courseName'],
                    imagePath: modules[index]['imagePath'],
                    videoDuration: modules[index]['videoDuration'],
                    imageDone: modules[index]['imageDone'],
                    wordsAction: modules[index]['wordsAction'],
                    onTap: () {
                      if (index == 0) {
                        // GBV Courses
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoPage()));
                      }
                      if (index == 2) {
                        // GBV Courses
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AssignmentPage()));
                      }
                    }),
              ),
            ],
          ),
        )
      ],
    );
  }
}
