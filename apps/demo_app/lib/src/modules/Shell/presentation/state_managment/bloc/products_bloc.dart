// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/error/error_model.dart';
import '../../../domain/entities/products_request_entity.dart';
import '../../../domain/entities/products_response_entity.dart';
import '../../../domain/usecases/products_use_case.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this.useCase) : super(const InitialProductsState()) {
    on<FetchProductsEvent>(_onFetch);
  }
  final ProductsUseCase useCase;

  Future<void> _onFetch(
    FetchProductsEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const LoadingProductsState());
    final result = await useCase(event.request);
    result.fold(
      (failure) => emit(ErrorProductsState(ErrorModel.fromFailure(failure))),
      (response) => emit(SuccessProductsState(response)),
    );
  }
}
