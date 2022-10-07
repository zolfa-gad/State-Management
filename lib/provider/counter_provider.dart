
import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier
{
  int counter = 0;

  void incrementCount() {
    counter++;
    notifyListeners();
  }
  
  void decrementCount() {
    counter--;
    notifyListeners();
  }

}





