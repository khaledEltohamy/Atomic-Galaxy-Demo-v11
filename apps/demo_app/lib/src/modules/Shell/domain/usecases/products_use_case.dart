// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../../../core/error/faluire.dart';
import '../entities/products_request_entity.dart';
import '../entities/products_response_entity.dart';
import '../repositories/products_repository.dart';

class ProductsUseCase {
  const ProductsUseCase(this.repository);
  final ProductsRepository repository;

  Future<Either<Failure, ProductsResponseEntity>> call(
    ProductsRequestEntity request,
  ) {
    return repository.execute(request);
  }
}
