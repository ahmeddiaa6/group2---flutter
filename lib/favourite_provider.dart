import 'package:flutter/cupertino.dart';

class FavouriteProvider extends ChangeNotifier {
  bool isFavourite = false;
  void toggle() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
