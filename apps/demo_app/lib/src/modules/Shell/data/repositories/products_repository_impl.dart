// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../domain/entities/products_request_entity.dart';
import '../../domain/entities/products_response_entity.dart';
import '../../domain/repositories/products_repository.dart';
import '../models/products_request_model.dart';
import '../datasources/products_remote_data_source.dart';
import '../models/products_response_model.dart';
import '../../../../core/client/api_handler.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/faluire.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  const ProductsRepositoryImpl(this.dataSource);
  final ProductsRemoteDataSource dataSource;

  @override
  Future<Either<Failure, ProductsResponseEntity>> execute(
    ProductsRequestEntity request,
  ) async {
    try {
      final response = await handleDataSourceRequest(
        onTry: () => dataSource.execute(
          ProductsRequestModel.fromEntity(request),
        ),
        onSuccess: (response) => ProductsResponseModel.fromJson(response.data),
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
