
import 'package:flutter/foundation.dart';

@immutable
class Counter {
    final String count;
    final Function incrementCount;
    final Function decrementCount;

    const Counter( {@required this.count, @required this.incrementCount, @required this.decrementCount});
}