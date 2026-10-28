// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dio/dio.dart';
import '../error/exception.dart';

Future<T> handleDataSourceRequest<T>({
  required Future<Response<dynamic>> Function() onTry,
  required T Function(Response<dynamic> response) onSuccess,
}) async {
  try {
    final response = await onTry();
    final status = _responseStatus(response.data) ?? response.statusCode ?? 200;
    if (status == 401) {
      throw ExceptionUnauthorized(_responseMessage(response.data));
    }
    if (status >= 400) {
      throw ApiRequestException(status, _responseMessage(response.data));
    }
    try {
      return onSuccess(response);
    } catch (_) {
      throw DataTypeChangeException();
    }
  } on DioException catch (error) {
    final status = error.response?.statusCode ?? 0;
    final message = _responseMessage(error.response?.data);
    if (status == 401) {
      throw ExceptionUnauthorized(message);
    }
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      throw ConnectionTimeoutException();
    }
    if (error.type == DioExceptionType.connectionError) {
      throw ConnectionErrorException();
    }
    throw ApiRequestException(
      status,
      message == 'The API request failed.'
          ? error.message ?? message
          : message,
    );
  }
}

String _responseMessage(Object? data) {
  if (data is Map) {
    final message = data['message'] ?? data['statusDescription'];
    if (message != null) return message.toString();
  }
  return 'The API request failed.';
}

int? _responseStatus(Object? data) {
  if (data is Map && data['statusCode'] is num) {
    return (data['statusCode'] as num).toInt();
  }
  return null;
}
