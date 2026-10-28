// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dio/dio.dart';

const int requestDuration = 30;

class ApiClient {
  ApiClient([Dio? dio]) : _dio = dio ?? _createDio();
  final Dio _dio;

  static Dio _createDio() => Dio()
    ..options.receiveTimeout = const Duration(seconds: requestDuration)
    ..options.connectTimeout = const Duration(seconds: requestDuration)
    ..options.sendTimeout = const Duration(seconds: requestDuration)
    ..options.responseType = ResponseType.json
    ..options.contentType = 'application/json'
    ..options.receiveDataWhenStatusError = true
    ..options.validateStatus = (code) => code != 401;

  Future<Response<dynamic>> get({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    Object? data,
    Options? options,
  }) => _dio.get(url, data: data, queryParameters: params ?? const {},
      options: options ?? Options(headers: headers ?? const {}));

  Future<Response<dynamic>> post({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    Object? data,
  }) => _dio.post(url, data: data, queryParameters: params ?? const {},
      options: Options(headers: headers ?? const {}));

  Future<Response<dynamic>> put({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    Object? data,
  }) => _dio.put(url, data: data, queryParameters: params ?? const {},
      options: Options(headers: headers ?? const {}));

  Future<Response<dynamic>> patch({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    Object? data,
  }) => _dio.patch(url, data: data, queryParameters: params ?? const {},
      options: Options(headers: headers ?? const {}));

  Future<Response<dynamic>> delete({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
    Object? data,
  }) => _dio.delete(url, data: data, queryParameters: params ?? const {},
      options: Options(headers: headers ?? const {}));

  Dio get dioClient => _dio;
}

final Dio dioClient = ApiClient().dioClient;
