import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
    final String title;

    DetailsPage({Key key, @required this.title}) : super(key: key);

    @override
    DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
                elevation: 0.0,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        Text("Flutter demo app using Redux for Dart."),
                        FlatButton(
                            child: Text(
                                "View home",
                                style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () => Navigator.of(context).pushNamed('/'),
                            color: Colors.blue,
                        )
                    ],
                ),
            ),
        );
    }
}