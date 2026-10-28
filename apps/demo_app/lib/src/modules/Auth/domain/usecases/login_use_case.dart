// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../../../core/error/faluire.dart';
import '../entities/login_request_entity.dart';
import '../entities/login_response_entity.dart';
import '../repositories/login_repository.dart';

class LoginUseCase {
  const LoginUseCase(this.repository);
  final LoginRepository repository;

  Future<Either<Failure, LoginResponseEntity>> call(
    LoginRequestEntity request,
  ) {
    return repository.execute(request);
  }
}
