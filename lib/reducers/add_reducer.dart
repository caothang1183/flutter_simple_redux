

import 'package:flutter_simple_redux/models/states/app_state.dart';

import 'counter_reducer.dart';

AppState appReducer(AppState state, action) =>
    new AppState(counter: counterReducer(state.counter, action));