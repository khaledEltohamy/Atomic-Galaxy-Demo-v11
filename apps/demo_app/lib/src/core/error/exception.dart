// GENERATED FILE - DO NOT EDIT BY HAND.
class ApiRequestException implements Exception {
  const ApiRequestException(this.statusCode, this.message);
  final int statusCode;
  final String message;
  @override
  String toString() => message;
}

class ExceptionUnauthorized implements Exception {
  const ExceptionUnauthorized(this.message);
  final String message;
  @override
  String toString() => message;
}

class ExceptionService implements Exception {}
class ExceptionServiceCallBack implements Exception {
  const ExceptionServiceCallBack(this.message);
  final String message;
}
class ExceptionServiceEmptyData implements Exception {}
class DataTypeChangeException implements Exception {}
class ConnectionTimeoutException implements Exception {}
class ConnectionErrorException implements Exception {}
