import 'package:dio/dio.dart';

import 'http_client.dart';

class DioHttpClient implements HttpClient {
  final Dio? _dio;

  DioHttpClient({Dio? dio}) : _dio = dio ?? Dio();

  @override
  Future<ResponseHttp<T>> request<T>(
    String path, {
    required HttpMethod method,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final dioResponse = await _dio!.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method.name.toUpperCase(),
          headers: headers,
        ),
      );

      return ResponseHttp<T>(
        data: dioResponse.data as T?,
        statusCode: dioResponse.statusCode,
        statusMessage: dioResponse.statusMessage,
        headers:
            dioResponse.headers.map.map((k, v) => MapEntry(k, v.join(','))),
      );
    } catch (e) {
      return ResponseHttp<T>(
        statusCode: 500,
        statusMessage: e.toString(),
      );
    }
  }
}
