import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextBox(
      {super.key,
      required this.placeholder,
      required this.icon,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: placeholder,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.tertiary, width: 0.6)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 0.6)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 0.6))),
    );
  }
}
