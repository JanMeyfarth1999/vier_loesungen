import 'package:flutter/material.dart';
import 'counter_quadrant.dart';

class CounterRow extends StatelessWidget {
  final String title1;
  final int counter1;
  final VoidCallback onDecrement1;
  final VoidCallback onIncrement1;

  final String title2;
  final int counter2;
  final VoidCallback onDecrement2;
  final VoidCallback onIncrement2;

  const CounterRow({
    super.key,
    required this.title1,
    required this.title2,
    required this.counter1,
    required this.counter2,
    required this.onDecrement1,
    required this.onDecrement2,
    required this.onIncrement1,
    required this.onIncrement2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CounterQuadrant(
            title: title1,
            counter: counter1,
            onDecrement: onDecrement1,
            onIncrement: onIncrement1,
          ),
        ),
        Expanded(
          child: CounterQuadrant(
            title: title2,
            counter: counter2,
            onDecrement: onDecrement2,
            onIncrement: onIncrement2,
          ),
        ),
      ],
    );
  }
}
