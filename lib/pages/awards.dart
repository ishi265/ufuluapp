import 'package:flutter/material.dart';

class Awards extends StatelessWidget {
  const Awards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Awards",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            )
          ],
        ),
      )),
    );
  }
}
