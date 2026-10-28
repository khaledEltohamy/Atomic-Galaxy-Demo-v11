// GENERATED FILE - DO NOT EDIT BY HAND.
part of 'product_filter_bloc.dart';

sealed class ProductFilterState extends Equatable {
  const ProductFilterState();
  @override
  List<Object?> get props => const [];
}
final class InitialProductFilterState extends ProductFilterState {
  const InitialProductFilterState();
}
final class LoadingProductFilterState extends ProductFilterState {
  const LoadingProductFilterState();
}
final class SuccessProductFilterState extends ProductFilterState {
  const SuccessProductFilterState(this.response);
  final ProductFilterResponseEntity response;
  @override
  List<Object?> get props => [response];
}
final class ErrorProductFilterState extends ProductFilterState {
  const ErrorProductFilterState(this.error);
  final ErrorModel error;
  @override
  List<Object?> get props => [error];
}
