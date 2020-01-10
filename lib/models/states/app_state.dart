
import 'package:flutter/foundation.dart';
import 'counter_state.dart';

@immutable
class AppState {
    final CounterState counter;

    const AppState({@required this.counter});

    AppState.initialState() : counter = CounterState();
}