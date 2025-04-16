import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BargeWidget extends StatelessWidget {
  final String text;
  const BargeWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff000000).withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Icon(
                      Iconsax.award5,
                      color: Theme.of(context).colorScheme.primary,
                      size: 30,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "View Barge",
                  style: TextStyle(fontSize: 14),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
