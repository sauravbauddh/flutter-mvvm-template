import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm/data/app_exceptions.dart';

import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future<dynamic> getGetApiResponse(String url) async {
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      return handleResponse(response);
    } on SocketException {
      throw FetchDataException("No internet connection");
    }
  }

  @override
  Future<dynamic> getPostApiResponse(String url, dynamic data) async {
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      return handleResponse(response);
    } on SocketException {
      throw FetchDataException("No internet connection");
    }
  }

  dynamic handleResponse(http.Response response) {
    final responseBody = jsonDecode(response.body);
    switch (response.statusCode) {
      case 200:
        return responseBody;
      case 400:
        throw BadRequestException(responseBody['error'] ?? "Bad request");
      default:
        throw FetchDataException(
          "Error occurred with status code ${response.statusCode}: ${responseBody['message'] ?? ''}",
        );
    }
  }
}
