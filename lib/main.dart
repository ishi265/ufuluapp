import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ufuluapp/pages/startScreen.dart';
import 'package:ufuluapp/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainColors.copyWith(
        textTheme: GoogleFonts.kellySlabTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: StartScreen(),
    );
  }
}
