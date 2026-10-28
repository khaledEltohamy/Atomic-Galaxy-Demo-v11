// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/error/error_model.dart';
import '../../../domain/entities/product_filter_request_entity.dart';
import '../../../domain/entities/product_filter_response_entity.dart';
import '../../../domain/usecases/product_filter_use_case.dart';

part 'product_filter_event.dart';
part 'product_filter_state.dart';

class ProductFilterBloc extends Bloc<ProductFilterEvent, ProductFilterState> {
  ProductFilterBloc(this.useCase) : super(const InitialProductFilterState()) {
    on<FetchProductFilterEvent>(_onFetch);
  }
  final ProductFilterUseCase useCase;

  Future<void> _onFetch(
    FetchProductFilterEvent event,
    Emitter<ProductFilterState> emit,
  ) async {
    emit(const LoadingProductFilterState());
    final result = await useCase(event.request);
    result.fold(
      (failure) => emit(ErrorProductFilterState(ErrorModel.fromFailure(failure))),
      (response) => emit(SuccessProductFilterState(response)),
    );
  }
}
