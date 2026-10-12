import 'package:flutter/material.dart';

class AdviceCard extends StatelessWidget {
  const AdviceCard({
    super.key,
    required this.adviceText,
    required this.imagePath,
  });

  final String adviceText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 300,
          height: 300,
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            adviceText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 240, 6, 6),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}