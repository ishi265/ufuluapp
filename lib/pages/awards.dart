import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.award5,
                        color: Theme.of(context).colorScheme.primary,
                        size: 30,
                      ),
                      Text(
                        "Basics of SGBV",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
