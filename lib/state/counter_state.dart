class CounterState {
  final int counter1;
  final int counter2;
  final int counter3;
  final int counter4;

  const CounterState({
    this.counter1 = 0,
    this.counter2 = 0,
    this.counter3 = 0,
    this.counter4 = 0,
  });

  CounterState copyWith({
    int? counter1,
    int? counter2,
    int? counter3,
    int? counter4,
  }) {
    return CounterState(
      counter1: counter1 ?? this.counter1,
      counter2: counter2 ?? this.counter2,
      counter3: counter3 ?? this.counter3,
      counter4: counter4 ?? this.counter4,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CounterState && 
    other.counter1 == counter1 &&
    other.counter2 == counter2 &&
    other.counter3 == counter3 &&
    other.counter4 == counter4;
  }

  @override
  int get hashCode {
    return Object.hash(counter1, counter2, counter3, counter4);

  }


}
