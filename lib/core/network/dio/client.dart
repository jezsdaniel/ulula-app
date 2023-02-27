import 'package:dio/dio.dart';

import 'package:ulula/core/utils/utils.dart';
import 'package:ulula/di/di.dart';

class DioClient {
  DioClient(this._dio, this._logger) {
    _dio
      ..options.baseUrl = Injector.apiBaseUrl
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
    _logger.information('''
      REQUEST: POST,
      DATA: $data,
      URL: $url,
      QueryParameters: $queryParameters,
      Content-Type: $contentType,
      Headers: $headers,
      ''');
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
