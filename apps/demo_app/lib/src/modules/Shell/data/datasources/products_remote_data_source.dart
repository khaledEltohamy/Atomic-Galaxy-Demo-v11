// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dio/dio.dart';
import '../../../../core/client/api_client.dart';
import '../../../../utils/contastant/endpoints.dart';
import '../models/products_request_model.dart';

abstract interface class ProductsRemoteDataSource {
  Future<Response<dynamic>> execute(ProductsRequestModel request);
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  const ProductsRemoteDataSourceImpl(this.client);
  final ApiClient client;

  @override
  Future<Response<dynamic>> execute(ProductsRequestModel request) {
    return client.get(
      url: BaseEndPoint.productsEndPointURL,
      params: request.queryParameters,
      headers: const {},
      
    );
  }
}
