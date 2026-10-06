import 'package:counter/state/counter_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterQuadrant extends ConsumerWidget {
  final String title;
  final int counterNumber;
  final int targetCounterNumber;

  const CounterQuadrant({
    super.key,
    required this.title,
    required this.counterNumber,
    required this.targetCounterNumber,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterProvider);

    int currentCounter;
    if (counterNumber == 1) {
      currentCounter = counterState.counter1;
    } else if (counterNumber == 2) {
      currentCounter = counterState.counter2;
    } else if (counterNumber == 3) {
      currentCounter = counterState.counter3;
    } else {
      currentCounter = counterState.counter4;
    }

    return Column(
      children: [
        Text(title),
        Text('$currentCounter'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                ref
                    .read(counterProvider.notifier)
                    .changeCounter(targetCounterNumber, -1);
              },
              icon: Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                ref
                    .read(counterProvider.notifier)
                    .changeCounter(targetCounterNumber, 1);
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
