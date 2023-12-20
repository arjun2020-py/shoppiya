import 'dart:developer';

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

  var jeweleryList = RxList<ApiResponseJeweleryModel>();

  void jeweleryApi() async {
    log('-----------------c1');
    var jewelery = await CategoryTypeServies().jeweleryApi();
    try {
      log('-----------------c2');

      isLoding(true);
      if (jewelery !=null ) {
        log('-----------------c3');

        jeweleryList.value = jewelery;

        log('---------------------c4');
      }
      isLoding(false);
    } on Exception catch (e) {
      SnackBar(content: Text(e.toString()));
    }
  }
}
