import 'package:flutter/material.dart';
import 'widgets/counter_quadrant.dart';  

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
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Counter 1'),
                      Text('$_counter1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              _changeCounter(4, -1);
                            },
                            icon: Icon(Icons.remove),
                          ),
                          IconButton(
                            onPressed: () {
                              _changeCounter(4, 1);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Counter 2'),
                      Text('$_counter2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              _changeCounter(3, -1);
                            },
                            icon: Icon(Icons.remove),
                          ),
                          IconButton(
                            onPressed: () {
                              _changeCounter(3, 1);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Counter 3'),
                      Text('$_counter3'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              _changeCounter(2, -1);
                            },
                            icon: Icon(Icons.remove),
                          ),
                          IconButton(
                            onPressed: () {
                              _changeCounter(2, 1);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Counter 4'),
                      Text('$_counter4'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              _changeCounter(1, -1);
                            },
                            icon: Icon(Icons.remove),
                          ),
                          IconButton(
                            onPressed: () {
                              _changeCounter(1, 1);
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
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
