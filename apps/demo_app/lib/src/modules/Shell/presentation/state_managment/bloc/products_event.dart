// GENERATED FILE - DO NOT EDIT BY HAND.
part of 'products_bloc.dart';

sealed class ProductsEvent extends Equatable {
  const ProductsEvent();
  @override
  List<Object?> get props => const [];
}

final class FetchProductsEvent extends ProductsEvent {
  const FetchProductsEvent({required this.request});
  final ProductsRequestEntity request;
  @override
  List<Object?> get props => [request];
}
