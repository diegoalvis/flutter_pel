import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pelican/data/remote/api/api_url.dart';
import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptors extends InterceptorsWrapper {
  final Dio _dio;
  final ShopperApi _api;

  AuthInterceptors(this._dio, this._api);

  @override
  Future onError(DioError err) async {
    if (err.response?.statusCode == 403) {
      RequestOptions options = err.response.request;

      final oldToken = options.headers[HttpHeaders.authorizationHeader].toString();
      final response = await _api.getAuthToken(oldToken).catchError((error) {
        final err = error as DioError;
        if (err.response?.statusCode == 500) {
          // TODO make logout
          return;
        }
      });
      final newToken = response.accessToken;
      // TODO inject preferences
      final SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString("token", newToken);

      options.headers[HttpHeaders.authorizationHeader] = newToken;
      return _dio.request(options.path, options: options);
    } else {
      return super.onError(err);
    }
  }

  @override
  Future onRequest(RequestOptions options) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final token = preferences.getString("token") ?? appTokenDevelopment;
    final options = Options(headers: {HttpHeaders.authorizationHeader: token});
    return super.onRequest(options);
  }
}
