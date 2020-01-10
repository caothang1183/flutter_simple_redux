import 'package:flutter/material.dart';
import 'package:flutter_simple_redux/container/counter_container.dart';
import 'package:flutter_simple_redux/widgets/counter_view.dart';

class HomePage extends StatefulWidget {
    HomePage({Key key}) : super(key: key);

    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Redux Flutter"),
                elevation: 0.0,
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    CounterContainer(),
                    FlatButton(
                        child: Text(
                            "View details",
                            style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => Navigator.of(context).pushNamed('/details'),
                        color: Colors.blue,
                    )
                ],
            ),
        );
    }
}
