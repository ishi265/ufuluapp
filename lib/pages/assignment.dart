import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AssignmetPage extends StatelessWidget {
  const AssignmetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Iconsax.arrow_left),
        title: Text("Assignment One"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question 1/5",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "1 Point",
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              //
              child: Text(
                "Why is it important to observe GBV around your peers.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Text(
              "Answer 1",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Answer 2",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      )),
    );
  }
}
