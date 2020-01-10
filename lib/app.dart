import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_simple_redux/pages/details_page.dart';
import 'package:flutter_simple_redux/pages/home_page.dart';
import 'package:redux/redux.dart';

import 'models/states/app_state.dart';

class App extends StatelessWidget {
    final Store<AppState> store;

    const App({Key key, this.store}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
                title: 'Flutter Redux App',
                routes: <String, WidgetBuilder>{
                    '/': (BuildContext context) => HomePage(),
                    '/details': (BuildContext context) => DetailsPage(title: "Details")
                },
            ),
        );
    }
}