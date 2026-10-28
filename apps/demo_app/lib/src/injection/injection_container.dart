// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:get_it/get_it.dart';
import '../core/client/api_client.dart';
import '../modules/Shell/injection/products_injection.dart';
import '../modules/Shell/injection/product_filter_injection.dart';
import '../modules/Auth/injection/login_injection.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  if (!serviceLocator.isRegistered<ApiClient>()) {
    serviceLocator.registerLazySingleton<ApiClient>(() => ApiClient());
  }
  const ProductsInjection().register(serviceLocator);
  const ProductFilterInjection().register(serviceLocator);
  const LoginInjection().register(serviceLocator);
}
