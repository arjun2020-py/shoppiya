import 'package:http/http.dart' as http;

import '../model/electronics_model.dart';

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
}
