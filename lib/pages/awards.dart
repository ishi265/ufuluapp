import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/widgets/BargeWidget.dart';

class Awards extends StatelessWidget {
  const Awards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Awards",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            ),
            Text(
              "Your Knowledge in SGBV",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 50,
            ),
            BargeWidget(
              text: "Basics of SGBV",
            )
          ],
        ),
      )),
    );
  }
}
