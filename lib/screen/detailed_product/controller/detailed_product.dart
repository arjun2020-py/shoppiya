import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DetailedProductController extends GetxController {
  var count = 0.obs;

  addItemCount() {
    count.value += 1;
  }

  removeItemCount() {
    count.value -= 1;
  }
}
