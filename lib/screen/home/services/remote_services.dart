import 'package:http/http.dart' as http;

import '../model/feature_product_model.dart';

class RemoteServices {
  static Future<List<ApiResponseFeatuedModel>?> fetchFeatures() async {
    var response =
        await http.get(Uri.parse('https://fakestoreapi.com/products?limit=8'));

  
    if (response.statusCode == 200) {
        var jsonString = response.body;
    return apiResponseFeatuedModelFromJson(jsonString);
    } else {
      //show error message
 
      return null;
    }
  }
}
