// GENERATED FILE - DO NOT EDIT BY HAND.
part of 'product_filter_bloc.dart';

sealed class ProductFilterEvent extends Equatable {
  const ProductFilterEvent();
  @override
  List<Object?> get props => const [];
}

final class FetchProductFilterEvent extends ProductFilterEvent {
  const FetchProductFilterEvent({required this.request});
  final ProductFilterRequestEntity request;
  @override
  List<Object?> get props => [request];
}
