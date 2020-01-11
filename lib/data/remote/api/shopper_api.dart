import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pelican/data/remote/api/api_url.dart';

class ShopperApi {
  final Dio _dio;

  const ShopperApi(this._dio);

  /// Fetch vendors list.
  Future<Response> getVendors() => _dio.get("$v1/vendors");

  /// User login.
  Future<Response> login(String username, String password) {
    final options = Options(headers: {HttpHeaders.authorizationHeader: appTokenDevelopment});
    return _dio.post("$v1/login", queryParameters: {"username": username, "password": password}, options: options);
  }

  /// Get authentication token.
  Future<Response> getAuthToken(String token) => _dio.get("$v1/tokens/refresh", queryParameters: {"token": token});
}
