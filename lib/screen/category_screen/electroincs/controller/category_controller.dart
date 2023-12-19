import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/category_services.dart';
import '../model/electronics_model.dart';

class CategoryTypeController extends GetxController {
  var electronicsList = RxList<ApiResponsEelectronicsModel>();
  var isLodaing = true.obs;

  @override
  void onInit() {
    electroincApi();
    super.onInit();
  }

  void electroincApi() async {
    var items = await CategoryTypeServies().electronicsApi();
    try {
      isLodaing(true);
      if (items != null) {
        electronicsList.value = items;
      }
      isLodaing(false);
    } on Exception catch (e) {
      SnackBar(content: Text(e.toString()));
    }
  }
}
