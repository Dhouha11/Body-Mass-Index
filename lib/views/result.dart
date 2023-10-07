import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = '';
    if (result >= 30)
      // ignore: curly_braces_in_flow_control_structures
      resultText = 'Obese!!';
    else if (result > 25 && result < 30)
      // ignore: curly_braces_in_flow_control_structures
      resultText = 'Overweight, mhhh not that bad!!';
    else if (result >= 18.5 && result <= 24.9)
      // ignore: curly_braces_in_flow_control_structures
      resultText = 'Normal, You rock!!';
    else
      // ignore: curly_braces_in_flow_control_structures
      resultText = 'Thin you should eat more!!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender: ${isMale ? 'Male' : 'Female'}',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'Result: ${result.toStringAsFixed(1)}',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'Healthiness: $resultPhrase',
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'Age: $age',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
