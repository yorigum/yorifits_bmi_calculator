import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColorDark: const Color(0xFF0a0E21),
          scaffoldBackgroundColor: const Color(0xFF0a0E21),
          accentColor: Colors.purple
      ),
      home: const InputPage(),
    );
  }
}

