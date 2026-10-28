// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../../../core/error/faluire.dart';
import '../entities/products_request_entity.dart';
import '../entities/products_response_entity.dart';

abstract interface class ProductsRepository {
  Future<Either<Failure, ProductsResponseEntity>> execute(
    ProductsRequestEntity request,
  );
}
