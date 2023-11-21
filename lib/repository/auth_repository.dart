import 'package:mvvm/data/network/base_api_service.dart';
import 'package:mvvm/data/network/network_api_service.dart';
import 'package:mvvm/res/url_endpoints.dart';

class AuthRepository {
  BaseApiService baseApiService = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          baseApiService.getPostApiResponse(UrlEndpoints.loginUrl, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response =
          baseApiService.getPostApiResponse(UrlEndpoints.registerUrl, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
