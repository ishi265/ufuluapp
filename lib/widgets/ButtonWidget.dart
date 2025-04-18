import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onTap;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.secondary),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              icon,
              size: 20,
              color: Theme.of(context).colorScheme.secondary,
            )
          ],
        ),
      ),
    );
  }
}
