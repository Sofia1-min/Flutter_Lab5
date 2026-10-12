import 'dart:math';
import 'package:flutter/material.dart';
import 'advice_card.dart';

final randomizer = Random();

class AdviceGenerator extends StatefulWidget {
  const AdviceGenerator({super.key});

  @override
  State<AdviceGenerator> createState() {
    return _AdviceGeneratorState();
  }
}

class _AdviceGeneratorState extends State<AdviceGenerator> {
  static const List<Map<String, String>> _advices = [
    {
      'text': 'Пейте не менее 1,5–2 литров воды в день — это улучшает работу мозга.',
      'image': 'assets/images/productivity.jpg',
    },
    {
      'text': 'Делайте зарядку каждое утро.',
      'image': 'assets/images/study.jpg',
    },
    {
      'text': 'Мойте руки перед и после еды.',
      'image': 'assets/images/health.png',
    },
  ];

  int _currentIndex = 0;

  void _showRandomAdvice() {
    setState(() {
      _currentIndex = randomizer.nextInt(_advices.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentAdvice = _advices[_currentIndex];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AdviceCard(
          adviceText: currentAdvice['text']!,
          imagePath: currentAdvice['image']!,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: _showRandomAdvice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            backgroundColor: const Color.fromARGB(255, 252, 252, 252),
            foregroundColor: const Color.fromARGB(255, 4, 0, 9),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text('Следующий совет'),
        ),
      ],
    );
  }
}