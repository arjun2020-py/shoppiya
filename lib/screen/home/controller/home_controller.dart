import 'dart:convert';
import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:shoppiya/screen/home/model/feature_product_model.dart';
import 'package:shoppiya/screen/home/services/remote_services.dart';
import 'package:shoppiya/utils/interlization/inerlization.dart';

import '../../../utils/shopping_images/shopping_images.dart';
import '../model/category_list_model.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  // var productList = RxList<ProductListModel>().obs;
  CarouselController buttonCarouselController = CarouselController();
  RxInt current = 0.obs;
  @override
  void onInit() {
    // fetchCategory();
    featchFeatureProduct();

    super.onInit();
  }

  final RxList<String> imageList = [
    CustomImage().offer4,
    CustomImage().offer5,
    CustomImage().offer6,
    CustomImage().offer7
  ].obs;
  carouselSliderChange(int index) {
    current.value = index;
  }

  final RxList<CatageryModel> categoryList = <CatageryModel>[
    CatageryModel(
        displayName: LocalName.electronics.tr,
        targetUrl: CustomImage().category1),
    CatageryModel(
        displayName: LocalName.jewelery.tr, targetUrl: CustomImage().category2),
    CatageryModel(
        displayName: LocalName.mensClothing.tr,
        targetUrl: CustomImage().category3),
    CatageryModel(
        displayName: LocalName.womenClothing.tr,
        targetUrl: CustomImage().category4)
  ].obs;

  var featureProduct = RxList<ApiResponseFeatuedModel>();
  void featchFeatureProduct() async {
    try {
      isLoading(true);
      var product = await RemoteServices.fetchFeatures();

      if (product != null) {
        featureProduct.value = product;
      }
      isLoading(false);
    } on Exception catch (e) {
      print('Error = ${e}');
    }
  }
}
