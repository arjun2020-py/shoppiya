import 'package:get/get.dart';
import 'package:shoppiya/screen/category_screen/womens/model/women_model.dart';

import '../../services/category_services.dart';

class WomensController extends GetxController {
  @override
  void onInit() {
    womenApi();
    super.onInit();
  }

  var isLoading = true.obs;

  RxList<ApiResponseWomenModel> womensList = <ApiResponseWomenModel>[].obs;

  var count = 0.obs;
  addItem() {
    count.value += 1;
  }

  removeItem() {
    count.value -= 1;
  }

  void womenApi() async {
    var women = await CategoryTypeServies().womensApi();

    try {
      isLoading(true);
      if (women != null) {
        womensList.value = women;
      }
      isLoading(false);
    } catch (e) {
      Get.snackbar('Eception', e.toString());
    }
  }
}
