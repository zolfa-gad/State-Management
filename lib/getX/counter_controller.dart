import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  // int counter = 0;
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter++;
    // update();
  }

  void decrementCounter() {
    counter--;
    // update();
  }
}
