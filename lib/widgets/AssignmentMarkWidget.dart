import 'package:flutter/material.dart';

class AssignmentMarkWidget extends StatelessWidget {
  const AssignmentMarkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[200]!))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/contract.png",
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Assignment One", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Passed")
                      ],
                    ),
                    Text("70%")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
