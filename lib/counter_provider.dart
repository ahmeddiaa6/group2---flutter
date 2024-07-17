import 'package:flutter/widgets.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 1;
  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
