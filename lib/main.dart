import 'package:flutter/material.dart';
import 'widgets/counter_quadrant.dart';
import 'widgets/counter_row.dart';

void main() {
  runApp(const MyApp());
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

  void _changeCounter(int counterNumber, int change) {
    setState(() {
      if (counterNumber == 1) {
        _counter1 = _counter1 + change;
      } else if (counterNumber == 2) {
        _counter2 = _counter2 + change;
      } else if (counterNumber == 3) {
        _counter3 = _counter3 + change;
      } else if (counterNumber == 4) {
        _counter4 = _counter4 + change;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('${_counter1 + _counter2 + _counter3 + _counter4}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: CounterRow(
              title1: 'Counter 1',
              counter1: _counter1,
              onDecrement1: () {
                _changeCounter(4, -1);
              },
              onIncrement1: () {
                _changeCounter(4, 1);
              },

              title2: 'Counter 2',
              counter2: _counter2,
              onDecrement2: () {
                _changeCounter(3, -1);
              },
              onIncrement2: () {
                _changeCounter(3, 1);
              },
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CounterQuadrant(
                    title: 'Counter 3',
                    counter: _counter3,
                    onDecrement: () {
                      _changeCounter(2, -1);
                    },
                    onIncrement: () {
                      _changeCounter(2, 1);
                    },
                  ),
                ),
                Expanded(
                  child: CounterQuadrant(
                    title: 'Counter 4',
                    counter: _counter4,
                    onDecrement: () {
                      _changeCounter(1, -1);
                    },
                    onIncrement: () {
                      _changeCounter(1, 1);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
