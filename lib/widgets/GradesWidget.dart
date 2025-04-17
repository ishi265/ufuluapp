import 'package:flutter/material.dart';
import 'package:ufuluapp/widgets/AssignmentMarkWidget.dart';

class GradesWidget extends StatelessWidget {
  const GradesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> assignments = [
      {'assignmentName': "Assignment One", 'status': "Passed", 'grade': "60%"},
      {'assignmentName': "Assignment Two", 'status': "Failed", 'grade': "20%"},
      {'assignmentName': "Assignment Three", 'status': "Passed", 'grade': "90%"}
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text("All Assignments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: assignments.length,
                itemBuilder: (context, index) => AssignmentMarkWidget(
                  assignmentName: assignments[index]['assignmentName'],
                  status: assignments[index]['status'],
                  grade: assignments[index]['grade'],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
