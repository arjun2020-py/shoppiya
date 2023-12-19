import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/category_services.dart';
import '../model/jewelery_model.dart';

class JeweleryControler extends GetxController {
  @override
  void onInit() {
    jeweleryApi();
    super.onInit();
  }

  var isLoding = true.obs;

  final RxList<ApiResponseJeweleryModel> jeweleryList =
      <ApiResponseJeweleryModel>[].obs;

  void jeweleryApi() async {
    var jewelery = CategoryTypeServies().jeweleryApi();
    try {
      isLoding(true);
      if (jewelery != null) {
        jeweleryList.value = jewelery as List<ApiResponseJeweleryModel>;
      }
      isLoding(false);
    } on Exception catch (e) {
      SnackBar(content: Text(e.toString()));
    }
  }
}
