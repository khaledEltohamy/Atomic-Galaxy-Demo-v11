// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../../../core/error/faluire.dart';
import '../entities/product_filter_request_entity.dart';
import '../entities/product_filter_response_entity.dart';
import '../repositories/product_filter_repository.dart';

class ProductFilterUseCase {
  const ProductFilterUseCase(this.repository);
  final ProductFilterRepository repository;

  Future<Either<Failure, ProductFilterResponseEntity>> call(
    ProductFilterRequestEntity request,
  ) {
    return repository.execute(request);
  }
}
