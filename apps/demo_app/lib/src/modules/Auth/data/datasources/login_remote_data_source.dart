// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dio/dio.dart';
import '../../../../core/client/api_client.dart';
import '../../../../utils/contastant/endpoints.dart';
import '../models/login_request_model.dart';

abstract interface class LoginRemoteDataSource {
  Future<Response<dynamic>> execute(LoginRequestModel request);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  const LoginRemoteDataSourceImpl(this.client);
  final ApiClient client;

  @override
  Future<Response<dynamic>> execute(LoginRequestModel request) {
    return client.post(
      url: BaseEndPoint.loginEndPointURL,
      params: request.queryParameters,
      headers: const {},
      data: request.toJson(),
    );
  }
}
