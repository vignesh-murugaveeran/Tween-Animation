import 'package:get/get.dart';

class CounterController extends GetxController {
  final RxInt count = 0.obs;

  void increament() {
    count.value++;
  }

  void decreament() {
    if (count.value > 0) {
      count.value--;
    }
  }
}
