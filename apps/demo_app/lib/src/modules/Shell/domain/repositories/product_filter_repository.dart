// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../../../core/error/faluire.dart';
import '../entities/product_filter_request_entity.dart';
import '../entities/product_filter_response_entity.dart';

abstract interface class ProductFilterRepository {
  Future<Either<Failure, ProductFilterResponseEntity>> execute(
    ProductFilterRequestEntity request,
  );
}
