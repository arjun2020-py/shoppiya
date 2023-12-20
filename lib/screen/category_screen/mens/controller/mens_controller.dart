import 'package:get/get.dart';
import 'package:shoppiya/screen/category_screen/mens/model/mens_model.dart';

import '../../services/category_services.dart';

class MensController extends GetxController {
  @override
  void onInit() {
    mensApi();
    super.onInit();
  }

  var isLodaing = true.obs;
  RxList<ApiResponseMensModel> mensList = <ApiResponseMensModel>[].obs;

  var count = 0.obs;
  void addItems() {
    count.value += 1;
  }

  void removeItem() {
    count.value -= 1;
  }

  void mensApi() async {
    var mens = await CategoryTypeServies().mensApi();

    try {
      isLodaing(true);
      if (mens != null) {
        mensList.value = mens;
      }
      isLodaing(false);
    } catch (e) {
      Get.snackbar('Eception', e.toString());
    }
  }
}
