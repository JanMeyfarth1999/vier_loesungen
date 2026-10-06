import 'package:flutter/material.dart';
import 'counter_quadrant.dart';

class CounterRow extends StatelessWidget {
  final String title1;
  final int counterNumber1;
  final int targetCounterNumber1;

  final String title2;
  final int counterNumber2;
  final int targetCounterNumber2;

  const CounterRow({
    super.key,
    required this.title1,
    required this.title2,
    required this.counterNumber1,
    required this.counterNumber2,
    required this.targetCounterNumber1,
    required this.targetCounterNumber2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CounterQuadrant(
            title: title1,
            counterNumber: counterNumber1,
            targetCounterNumber: targetCounterNumber1,
          ),
        ),
        Expanded(
          child: CounterQuadrant(
            title: title2,
            counterNumber: counterNumber2,
            targetCounterNumber: targetCounterNumber2,           
          ),
        ),
      ],
    );
  }

}
