// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dartz/dartz.dart';
import '../../../../core/error/faluire.dart';
import '../entities/login_request_entity.dart';
import '../entities/login_response_entity.dart';

abstract interface class LoginRepository {
  Future<Either<Failure, LoginResponseEntity>> execute(
    LoginRequestEntity request,
  );
}
