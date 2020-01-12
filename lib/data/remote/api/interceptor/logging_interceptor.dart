import 'dart:async';

import 'package:dio/dio.dart';

class LoggingInterceptors extends InterceptorsWrapper {
  @override
  Future onError(DioError err) {
    print(
        "<-- ${err.message} ${(err.response?.request != null ? (err.response.request.baseUrl + err.response.request.path) : 'URL')}");
    print("${err.response != null ? err.response.data : 'Unknown Error'}");
    print("<-- End error");
    return super.onError(err);
  }

  @override
  Future onRequest(RequestOptions options) async {
    print(
        "--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"" + (options.baseUrl ?? "") + (options.path ?? "")}");
    print("Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));
    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    print("--> END ${options.method != null ? options.method.toUpperCase() : 'METHOD'}");

    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) async {
    print(
        "<-- ${response.statusCode} ${(response.request != null ? (response.request.baseUrl + response.request.path) : 'URL')}");
    print("Headers:");
    response.headers?.forEach((k, v) => print('$k: $v'));
    print("Response: ${response.data}");
    print("<-- END HTTP");
    return super.onResponse(response);
  }
}
