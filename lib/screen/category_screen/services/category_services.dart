import 'package:http/http.dart' as http;

import '../electroincs/model/electronics_model.dart';
import '../jewelery/model/jewelery_model.dart';

class CategoryTypeServies {
  Future<List<ApiResponsEelectronicsModel>?> electronicsApi() async {
    final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/electronics'));

    if (response.statusCode == 200) {
      var jsonString = response.body;

      return apiResponsEelectronicsModelFromJson(jsonString);
    } else {
      return null;
    }
  }

  Future<List<ApiResponseJeweleryModel>?> jeweleryApi() async {
    final response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/category/jewelery'));

    if (response.statusCode == 200) {
      final jsonString = response.body;
      return apiResponseJeweleryModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
