// GENERATED FILE - DO NOT EDIT BY HAND.
import 'faluire.dart';

class ErrorModel {
  const ErrorModel({required this.title, required this.message});
  final String? title;
  final String message;

  factory ErrorModel.fromFailure(Failure failure) => switch (failure) {
    FailureServiceWithResponse(:final message) =>
      ErrorModel(title: 'Request failed', message: message),
    FailureServiceEmptyData() =>
      const ErrorModel(title: 'No data', message: ''),
    _ => const ErrorModel(
      title: 'Error',
      message: 'Something went wrong. Please try again.',
    ),
  };
}
