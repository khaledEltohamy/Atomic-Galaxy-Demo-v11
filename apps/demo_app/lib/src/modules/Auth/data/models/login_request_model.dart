// GENERATED FILE - DO NOT EDIT BY HAND.
import '../../domain/entities/login_request_entity.dart';

class LoginRequestModel extends LoginRequestEntity {
  const LoginRequestModel({
    super.email,
    super.password,
  });

  factory LoginRequestModel.fromEntity(
    LoginRequestEntity entity,
  ) => LoginRequestModel(
    email: entity.email,
    password: entity.password,
  );

  factory LoginRequestModel.fromValues(
    Map<String, String> values, {
    Map<String, Object?> defaults = const {},
  }) => LoginRequestModel(
      email: _email(values, defaults),
      password: _password(values, defaults),
  );

  @override
  Map<String, dynamic> get queryParameters => {

  };

  @override
  Map<String, dynamic> toJson() => {
      'email': email,
      'password': password,
  };
}

String? _email(Map<String, String> values, Map<String, Object?> defaults) => values["email"] ?? (defaults["email"] as String?);
String? _password(Map<String, String> values, Map<String, Object?> defaults) => values["password"] ?? (defaults["password"] as String?);
