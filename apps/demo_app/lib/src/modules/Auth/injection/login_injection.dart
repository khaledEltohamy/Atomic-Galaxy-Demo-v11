// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:get_it/get_it.dart';
import '../data/datasources/login_remote_data_source.dart';
import '../data/repositories/login_repository_impl.dart';
import '../domain/repositories/login_repository.dart';
import '../domain/usecases/login_use_case.dart';
import '../presentation/state_managment/bloc/login_bloc.dart';
import '../../../core/client/api_client.dart';

class LoginInjection {
  const LoginInjection();

  static LoginBloc createBloc() => LoginBloc(
    LoginUseCase(
      LoginRepositoryImpl(
        LoginRemoteDataSourceImpl(ApiClient()),
      ),
    ),
  );

  void register(GetIt serviceLocator) {
    if (!serviceLocator.isRegistered<LoginRemoteDataSource>()) {
      serviceLocator.registerLazySingleton<LoginRemoteDataSource>(
        () => LoginRemoteDataSourceImpl(serviceLocator<ApiClient>()),
      );
    }
    if (!serviceLocator.isRegistered<LoginRepository>()) {
      serviceLocator.registerLazySingleton<LoginRepository>(
        () => LoginRepositoryImpl(serviceLocator()),
      );
    }
    if (!serviceLocator.isRegistered<LoginUseCase>()) {
      serviceLocator.registerLazySingleton<LoginUseCase>(
        () => LoginUseCase(serviceLocator()),
      );
    }
    if (!serviceLocator.isRegistered<LoginBloc>()) {
      serviceLocator.registerFactory<LoginBloc>(
        () => LoginBloc(serviceLocator()),
      );
    }
  }
}
