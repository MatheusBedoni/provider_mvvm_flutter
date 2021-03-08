import 'package:http/http.dart' as http;
import 'package:mvvm_flutter/data/exceptions/e_api_exception.dart';


class ApiResponse{

  static http.Response returnResponseOrThrowException(http.Response response) {
    if (response.statusCode == 404) {
      throw ItemNotFoundException();
    } else if (response.statusCode > 400) {
      throw UnKnowApiException(response.statusCode);
    } else {
      return response;
    }
  }
}