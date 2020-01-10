import 'package:flutter/material.dart';
import 'package:flutter_simple_redux/models/counter.dart';

class CounterView extends StatelessWidget {
    final Counter model;

    const CounterView({Key key, @required this.model}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                FlatButton(
                    key: Key('counter_button'),
                    child: Text(
                        "Decrement",
                        style: TextStyle(color: Colors.white),
                    ),
                    onPressed: model.decrementCount,
                    color: Colors.blue),
                Text(
                    'You have pushed ${model.count} times!',
                ),
                FlatButton(
                    key: Key('counter_button1'),
                    child: Text(
                        "Increment",
                        style: TextStyle(color: Colors.white),
                    ),
                    onPressed: model.incrementCount,
                    color: Colors.blue),
            ],
        );
    }
}