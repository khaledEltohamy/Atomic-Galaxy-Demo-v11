// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:get_it/get_it.dart';
import '../data/datasources/products_remote_data_source.dart';
import '../data/repositories/products_repository_impl.dart';
import '../domain/repositories/products_repository.dart';
import '../domain/usecases/products_use_case.dart';
import '../presentation/state_managment/bloc/products_bloc.dart';
import '../../../core/client/api_client.dart';

class ProductsInjection {
  const ProductsInjection();

  static ProductsBloc createBloc() => ProductsBloc(
    ProductsUseCase(
      ProductsRepositoryImpl(
        ProductsRemoteDataSourceImpl(ApiClient()),
      ),
    ),
  );

  void register(GetIt serviceLocator) {
    if (!serviceLocator.isRegistered<ProductsRemoteDataSource>()) {
      serviceLocator.registerLazySingleton<ProductsRemoteDataSource>(
        () => ProductsRemoteDataSourceImpl(serviceLocator<ApiClient>()),
      );
    }
    if (!serviceLocator.isRegistered<ProductsRepository>()) {
      serviceLocator.registerLazySingleton<ProductsRepository>(
        () => ProductsRepositoryImpl(serviceLocator()),
      );
    }
    if (!serviceLocator.isRegistered<ProductsUseCase>()) {
      serviceLocator.registerLazySingleton<ProductsUseCase>(
        () => ProductsUseCase(serviceLocator()),
      );
    }
    if (!serviceLocator.isRegistered<ProductsBloc>()) {
      serviceLocator.registerFactory<ProductsBloc>(
        () => ProductsBloc(serviceLocator()),
      );
    }
  }
}
