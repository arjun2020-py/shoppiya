import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoppiya/utils/shopping_router/shopping_router.dart';

class SplashController extends GetxController {
  Future<void> splash() async {
    Future.delayed(Duration(seconds: 5), () {
      final token = GetStorage().read('token');
      if (token == null) {
        Get.toNamed(ShoppingRouter().login);
      } else {
        Get.toNamed(ShoppingRouter().home);
      }
    });
  }

  @override
  void onInit() {
    splash();
    super.onInit();
  }
}
