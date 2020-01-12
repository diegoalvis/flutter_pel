import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pelican/data/remote/dto/base_response.dart';
import 'package:pelican/data/remote/error/service_exception.dart';

abstract class RemoteDataSource {

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
