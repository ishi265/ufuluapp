import 'package:flutter/material.dart';
import 'package:ufuluapp/widgets/AssignmentMarkWidget.dart';

class GradesWidget extends StatelessWidget {
  const GradesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text("All Assignments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        AssignmentMarkWidget(),
        AssignmentMarkWidget(),
      ],
    );
  }
}
