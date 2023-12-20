
import 'package:http/http.dart' as http;
import 'package:shoppiya/screen/category_screen/mens/model/mens_model.dart';
import 'package:shoppiya/screen/category_screen/womens/model/women_model.dart';

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

  Future<List<ApiResponseMensModel>?> mensApi() async {
    final response = await http.get(Uri.parse(
        'https://fakestoreapi.com/products/category/men\'s clothing'));
    if (response.statusCode == 200) {
      var jsonString = response.body;

      return apiResponseMensModelFromJson(jsonString);
    } else {
      return null;
    }
  }

  Future<List<ApiResponseWomenModel>?> womensApi() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/women\'s clothing'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return apiResponseWomenModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
