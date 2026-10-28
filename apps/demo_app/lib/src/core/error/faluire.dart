// GENERATED FILE - DO NOT EDIT BY HAND.
abstract class Failure {
  const Failure();
}

class FailureService extends Failure {
  const FailureService();
}

class FailureServiceWithResponse extends Failure {
  const FailureServiceWithResponse(this.message);
  final String message;
}

class FailureServiceEmptyData extends Failure {
  const FailureServiceEmptyData();
}

class ConnectionTimeoutFailure extends Failure {
  const ConnectionTimeoutFailure();
}

class ConnectionErrorFailure extends Failure {
  const ConnectionErrorFailure();
}

class DataTypeChangeFailure extends Failure {
  const DataTypeChangeFailure();
}
