import 'package:dio/dio.dart';
import 'package:pelican/data/remote/api/api_url.dart';
import 'package:pelican/data/remote/api/interceptor/auth_interceptor.dart';

class ShopperApi {
  final Dio _dio;

  const ShopperApi(this._dio);

  /// Fetch vendors list.
  Future<Response> getVendors() => _dio.get("$v1/vendors");

  /// User login.
  Future<Response> login(String username, String password) {
    return _dio.post("$v1/login", queryParameters: {"username": username, "password": password});
  }

  /// Get authentication token.
  Future<AuthResponse> getAuthToken(String oldToken) async {
    final response = await _dio.get("$v1/tokens/refresh", queryParameters: {"token": oldToken});
    return AuthResponse(response.data["accessToken"]);
  }
}
