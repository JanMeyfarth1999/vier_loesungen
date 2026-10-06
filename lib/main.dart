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
              counter1: counterState.counter1,
              onDecrement1: () {
                ref.read(counterProvider.notifier).changeCounter(4, -1);
              },
              onIncrement1: () {
                ref.read(counterProvider.notifier).changeCounter(4, 1);
              },

              title2: 'Counter 2',
              counter2: counterState.counter2,
              onDecrement2: () {
                ref.read(counterProvider.notifier).changeCounter(3, -1);
              },
              onIncrement2: () {
                ref.read(counterProvider.notifier).changeCounter(3, 1);
              },
            ),
          ),

          Expanded(
            child: CounterRow(
              title1: 'Counter 3',
              counter1: counterState.counter3,
              onDecrement1: () {
                ref.read(counterProvider.notifier).changeCounter(2, -1);
              },
              onIncrement1: () {
                ref.read(counterProvider.notifier).changeCounter(2, 1);
              },

              title2: 'Counter 4',
              counter2: counterState.counter4,
              onDecrement2: () {
                ref.read(counterProvider.notifier).changeCounter(1, -1);
              },
              onIncrement2: () {
                ref.read(counterProvider.notifier).changeCounter(1, 1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
