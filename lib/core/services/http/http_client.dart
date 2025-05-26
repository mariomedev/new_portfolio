abstract class HttpClient {
  Future<ResponseHttp<T>> request<T>(
    String path, {
    required HttpMethod method,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });
}

class ResponseHttp<T> {
  final T? data;
  final int? statusCode;
  final String? statusMessage;
  final Map<String, String>? headers;
  final bool isRedirect;
  final Map<String, dynamic>? extra;

  ResponseHttp({
    this.data,
    this.statusCode,
    this.statusMessage,
    this.headers,
    this.isRedirect = false,
    this.extra,
  });
}

enum HttpMethod { get, post, put, delete, patch }
