import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api/base_response.dart';
import 'error/service_exception.dart';

abstract class RemoteDataSource {
//  Future<Options> _mkAuth(SessionManager session) async {
//    final token = await session.authToken;
//    return Options(headers: {HttpHeaders.authorizationHeader: token});
//  }

  Future<BaseResponse<T>> processResponse<T>(Response response, ComputeCallback<Map<String, dynamic>, T> callback) async {
    if ((response.statusCode >= 200 && response.statusCode < 300) || response.statusCode == 304) {
      final body = response.data;
      final bodyData = body; //body["data"];
      bool success = body["success"] as bool;
      String error = body["error"] as String;

      T data;
      if (callback == null) {
        data = bodyData as T;
      } else {
        data = await compute<Map<String, dynamic>, T>(callback, bodyData);
      }
      return BaseResponse(success: success, data: data, error: error);
    } else if (response.statusCode == 404) {
      throw ServiceException(cause: "Not found");
    } else {
      throw ServiceException(cause: 'Error');
    }
  }
}
