// GENERATED FILE - DO NOT EDIT BY HAND.
part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object?> get props => const [];
}
final class InitialProductsState extends ProductsState {
  const InitialProductsState();
}
final class LoadingProductsState extends ProductsState {
  const LoadingProductsState();
}
final class SuccessProductsState extends ProductsState {
  const SuccessProductsState(this.response);
  final ProductsResponseEntity response;
  @override
  List<Object?> get props => [response];
}
final class ErrorProductsState extends ProductsState {
  const ErrorProductsState(this.error);
  final ErrorModel error;
  @override
  List<Object?> get props => [error];
}
