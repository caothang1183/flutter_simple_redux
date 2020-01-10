

import 'package:flutter_simple_redux/actions/counter_action.dart';
import 'package:flutter_simple_redux/models/states/counter_state.dart';

CounterState counterReducer(CounterState counter, action) {
    if (action is IncrementCounter) {
        return counter.copyWith(value: counter.value + 1);
    }
    if (action is DecrementCounter) {
        return counter.copyWith(value: counter.value - 1);
    }
    return counter;
}