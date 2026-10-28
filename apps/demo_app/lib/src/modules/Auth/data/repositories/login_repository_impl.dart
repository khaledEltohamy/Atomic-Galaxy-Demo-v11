// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../domain/entities/login_request_entity.dart';
import '../../domain/entities/login_response_entity.dart';
import '../../domain/repositories/login_repository.dart';
import '../models/login_request_model.dart';
import '../datasources/login_remote_data_source.dart';
import '../models/login_response_model.dart';
import '../../../../core/client/api_handler.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/faluire.dart';

class LoginRepositoryImpl implements LoginRepository {
  const LoginRepositoryImpl(this.dataSource);
  final LoginRemoteDataSource dataSource;

  @override
  Future<Either<Failure, LoginResponseEntity>> execute(
    LoginRequestEntity request,
  ) async {
    try {
      final response = await handleDataSourceRequest(
        onTry: () => dataSource.execute(
          LoginRequestModel.fromEntity(request),
        ),
        onSuccess: (response) => LoginResponseModel.fromJson(response.data),
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
