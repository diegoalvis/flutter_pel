import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pelican/data/remote/api/api_url.dart';
import 'package:pelican/data/remote/dto/base_response.dart';
import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends InterceptorsWrapper {
  final Dio _dio;

  AuthInterceptor(this._dio);

  @override
  Future onResponse(Response response) async {
    return response;
  }

  @override
  Future onError(DioError err) async {
    if (err.response?.statusCode == 403) {
      _dio.interceptors.requestLock.lock();

      RequestOptions options = err.response.request;

      final tokenDio = Dio();
      tokenDio.options = _dio.options;
      final ShopperApi _api = ShopperApi(tokenDio);

      final oldToken = options.headers[HttpHeaders.authorizationHeader].toString();
      final response = await _api.getAuthToken(oldToken).catchError((error) {
        final err = error as DioError;
        if (err.response?.statusCode == 500) {
          // TODO make logout
          return;
        }
      });
      final newToken = response?.accessToken;
      // TODO inject preferences
      final SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString("token", newToken);

      options.headers[HttpHeaders.authorizationHeader] = newToken;

      _dio.interceptors.requestLock.unlock();
      return _dio.request(options.path, options: options);
    } else {
      return err;
    }
  }

  @override
  Future onRequest(RequestOptions options) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final token = preferences.getString("token") ?? appTokenDevelopment;
    options.headers[HttpHeaders.authorizationHeader] = token;
    return options;
  }
}

class AuthResponse extends BaseResponse {
  final String accessToken;

  AuthResponse(this.accessToken);
}
