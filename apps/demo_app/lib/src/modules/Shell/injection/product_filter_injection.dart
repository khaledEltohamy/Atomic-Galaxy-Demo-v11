// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:get_it/get_it.dart';
import '../data/datasources/product_filter_remote_data_source.dart';
import '../data/repositories/product_filter_repository_impl.dart';
import '../domain/repositories/product_filter_repository.dart';
import '../domain/usecases/product_filter_use_case.dart';
import '../presentation/state_managment/bloc/product_filter_bloc.dart';
import '../../../core/client/api_client.dart';

class ProductFilterInjection {
  const ProductFilterInjection();

  static ProductFilterBloc createBloc() => ProductFilterBloc(
    ProductFilterUseCase(
      ProductFilterRepositoryImpl(
        ProductFilterRemoteDataSourceImpl(ApiClient()),
      ),
    ),
  );

  void register(GetIt serviceLocator) {
    if (!serviceLocator.isRegistered<ProductFilterRemoteDataSource>()) {
      serviceLocator.registerLazySingleton<ProductFilterRemoteDataSource>(
        () => ProductFilterRemoteDataSourceImpl(serviceLocator<ApiClient>()),
      );
    }
    if (!serviceLocator.isRegistered<ProductFilterRepository>()) {
      serviceLocator.registerLazySingleton<ProductFilterRepository>(
        () => ProductFilterRepositoryImpl(serviceLocator()),
      );
    }
    if (!serviceLocator.isRegistered<ProductFilterUseCase>()) {
      serviceLocator.registerLazySingleton<ProductFilterUseCase>(
        () => ProductFilterUseCase(serviceLocator()),
      );
    }
    if (!serviceLocator.isRegistered<ProductFilterBloc>()) {
      serviceLocator.registerFactory<ProductFilterBloc>(
        () => ProductFilterBloc(serviceLocator()),
      );
    }
  }
}
