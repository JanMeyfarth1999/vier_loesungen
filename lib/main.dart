import 'package:flutter/material.dart';
import 'widgets/counter_row.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/counter_notifier.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(
          '${counterState.counter1 + counterState.counter2 + counterState.counter3 + counterState.counter4}',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: CounterRow(
              title1: 'Counter 1',
              counterNumber1: 1,
              targetCounterNumber1: 4,

              title2: 'Counter 2',
              counterNumber2: 2,
              targetCounterNumber2: 3,
            ),
          ),

          Expanded(
            child: CounterRow(
              title1: 'Counter 3',
              counterNumber1: 3,
              targetCounterNumber1: 2,

              title2: 'Counter 4',
              counterNumber2: 4,
              targetCounterNumber2: 1,
            ),
          ),
        ],
      ),
    );
  }
}
