// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../domain/entities/product_filter_request_entity.dart';
import '../../domain/entities/product_filter_response_entity.dart';
import '../../domain/repositories/product_filter_repository.dart';
import '../models/product_filter_request_model.dart';
import '../datasources/product_filter_remote_data_source.dart';
import '../models/product_filter_response_model.dart';
import '../../../../core/client/api_handler.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/faluire.dart';

class ProductFilterRepositoryImpl implements ProductFilterRepository {
  const ProductFilterRepositoryImpl(this.dataSource);
  final ProductFilterRemoteDataSource dataSource;

  @override
  Future<Either<Failure, ProductFilterResponseEntity>> execute(
    ProductFilterRequestEntity request,
  ) async {
    try {
      final response = await handleDataSourceRequest(
        onTry: () => dataSource.execute(
          ProductFilterRequestModel.fromEntity(request),
        ),
        onSuccess: (response) => ProductFilterResponseModel.fromJson(response.data),
      );
      return Right(response);
    } on ExceptionUnauthorized catch (error) {
      return Left(FailureServiceWithResponse(error.message));
    } on ApiRequestException catch (error) {
      return Left(FailureServiceWithResponse(error.message));
    } on ConnectionTimeoutException {
      return const Left(ConnectionTimeoutFailure());
    } on ConnectionErrorException {
      return const Left(ConnectionErrorFailure());
    } on DataTypeChangeException {
      return const Left(DataTypeChangeFailure());
    } on ExceptionServiceEmptyData {
      return const Left(FailureServiceEmptyData());
    } on ExceptionService {
      return const Left(FailureService());
    }
  }
}
