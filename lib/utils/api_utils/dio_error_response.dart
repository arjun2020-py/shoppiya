import 'dart:convert';

import 'package:dio/dio.dart';

class DioErrorResponseString {
  String getErrorString(DioException dioError) {
    var returnString = "Something went wrong.!";
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        returnString = "Connection timeout error Occured";
        break;
      case DioExceptionType.sendTimeout:
        returnString = "Send timeout error Occured";
        break;

      case DioExceptionType.receiveTimeout:
        returnString = "Receive timeout error Occured";
        break;

      case DioExceptionType.badResponse:
        returnString = dioError.response!.statusMessage!;
        break;

      case DioExceptionType.cancel:
        returnString = "Cancel error Occured";
        break;

      case DioExceptionType.unknown:
        returnString = "Something went wrong..!";
        break;

      // TODO: Handle this case.

      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.connectionError:
      // TODO: Handle this case.
    }

    if (dioError.type == DioExceptionType.badResponse &&
        dioError.response!.statusCode == 500) {
      returnString = jsonDecode(dioError.response!.toString())["message"];
    }

    return returnString;
  }
}
