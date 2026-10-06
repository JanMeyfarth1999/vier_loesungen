import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_state.dart';

class CounterNotifier extends Notifier<CounterState> {
  @override
  CounterState build() {
    return const CounterState();
  }

  void changeCounter(int counterNumber, int change) {
    if (counterNumber == 1) {
      state = state.copyWith(counter1: state.counter1 + change);
    } else if (counterNumber == 2) {
      state = state.copyWith(counter2: state.counter2 + change);
    } else if (counterNumber == 3) {
      state = state.copyWith(counter3: state.counter3 + change);
    } else if (counterNumber == 4) {
      state = state.copyWith(counter4: state.counter4 + change);
    }
  }
}

final counterProvider = 
  NotifierProvider<CounterNotifier, CounterState>(
    CounterNotifier.new,
  );
