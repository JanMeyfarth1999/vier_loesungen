import 'package:flutter/material.dart'; 

class CounterQuadrant extends StatelessWidget {

final String title;
final int counter;
final VoidCallback onDecrement;
final VoidCallback onIncrement;

CounterQuadrant({
  required this.title,
  required this.counter,
  required this.onDecrement,
  required this.onIncrement,
});

@override 
Widget build(BuildContext context) {
  return Column(
    children: [
      Text(title),
      Text('$counter'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: onDecrement,
          icon: Icon(Icons.remove),
          ),

          IconButton(onPressed: onIncrement,
          icon: Icon(Icons.add),
          ),

        ],
      ),
    ],
  );
}
}

