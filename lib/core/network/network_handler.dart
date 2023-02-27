import 'package:dio/dio.dart';

import 'package:ulula/core/network/network.dart';
import 'package:ulula/core/platform/platform.dart';
import 'package:ulula/core/utils/utils.dart';

class NetworkHandler {
  NetworkHandler(this._sharedP, this._logger, this._dioClient);

  final Logger _logger;
  final SharedPreferencesManager _sharedP;
  final DioClient _dioClient;

  Future<Map<String, String>> _commonHeaders() async {
    final v = {
      'Authorization': await _sharedP.getAccessToken(),
      'Content-Type': 'application/json'
    };

    return v;
  }

  Future<Response<Map<String, dynamic>>> signIn({
    required String endpoint,
    required Map<String, dynamic> body,
  }) async {
    try {
      final res = await _dioClient.post<Map<String, dynamic>>(
        endpoint,
        data: body,
      );
      if (res.statusCode == 200) {
        await _sharedP.setAccessToken(res.data!['token'] as String);
      }
      return res;
    }
    catch (ex) {
      rethrow;
    }
  }
}
