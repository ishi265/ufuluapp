import 'package:flutter/material.dart';

class ModuleWidget extends StatelessWidget {
  final String courseName;
  final String imagePath;
  final String videoDuration;
  final String? imageDone;
  final String wordsAction;

  const ModuleWidget({
    super.key,
    required this.courseName,
    required this.imagePath,
    required this.videoDuration,
    this.imageDone,
    required this.wordsAction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(courseName, style: const TextStyle(fontSize: 18)),
                  if (imageDone != null)
                    Image.asset(
                      imageDone!,
                      width: 20,
                      errorBuilder: (_, __, ___) => const SizedBox(width: 20),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        imagePath,
                        width: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(wordsAction),
                    ],
                  ),
                  Text(videoDuration),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
