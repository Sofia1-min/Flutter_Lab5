import 'package:flutter/material.dart';
import 'gradient_container.dart';
import 'advice_generator.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          child: AdviceGenerator(),
        ),
      ),
    ),
  );
}

