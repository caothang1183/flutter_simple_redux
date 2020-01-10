import 'package:flutter/material.dart';
import 'package:flutter_simple_redux/app.dart';
import 'package:flutter_simple_redux/models/states/counter_state.dart';
import 'package:flutter_simple_redux/reducers/add_reducer.dart';
import 'package:redux/redux.dart';

import 'models/states/app_state.dart';

void main() {
    final store = new Store<AppState>(appReducer,
        initialState: AppState(counter: CounterState()));

    runApp(App(store: store));
}

