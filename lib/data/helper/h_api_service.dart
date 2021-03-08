import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_flutter/data/exceptions/e_api_exception.dart';
import 'package:mvvm_flutter/data/models/m_api_response.dart';


mixin  ApiServiceHelper{
  Future<http.Response> get(String endpoint) async {
    try {
      final response = await http.get(
        '$endpoint',
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
        },
      );

      return ApiResponse.returnResponseOrThrowException(response);
    } on IOException catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

}
