import 'package:dio/dio.dart';

import 'package:ulula/core/network/dio/logger_interceptor.dart';
import 'package:ulula/core/utils/utils.dart';
import 'package:ulula/di/di.dart';

class DioClient {
  DioClient(this._dio, this._logger) {
    _dio
      ..interceptors.add(LoggingInterceptors(_logger))
      ..options.baseUrl = Injector.apiBaseUrl
      ..options.followRedirects = false
      ..options.validateStatus = ((status) {
        if (status == null) {
          return false;
        }
        return status < 500;
      })
      ..options.responseType = ResponseType.json;
  }

  final Dio _dio;
  final Logger _logger;

  // Post:----------------------------------------------------------------------
  Future<Response<T>> post<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    String contentType = 'application/json',
    Map<String, dynamic>? headers,
  }) async {
    try {
      final response = await _dio.post<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          contentType: contentType,
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
