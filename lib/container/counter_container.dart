
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_simple_redux/actions/counter_action.dart';
import 'package:flutter_simple_redux/models/counter.dart';
import 'package:flutter_simple_redux/models/states/app_state.dart';
import 'package:flutter_simple_redux/widgets/counter_view.dart';

class CounterContainer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return StoreConnector<AppState, Counter>(
            converter: (store) => Counter(
                count: store.state.counter.value.toString(),
                incrementCount: () => store.dispatch(
                    IncrementCounter(),
                ),
                decrementCount: () => store.dispatch(
                    DecrementCounter(),
                ),
            ),
            builder: (context, model) => CounterView(model: model),
        );
    }
}