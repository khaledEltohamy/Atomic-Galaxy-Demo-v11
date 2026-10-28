// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:dio/dio.dart';
import '../../../../core/client/api_client.dart';
import '../../../../utils/contastant/endpoints.dart';
import '../models/product_filter_request_model.dart';

abstract interface class ProductFilterRemoteDataSource {
  Future<Response<dynamic>> execute(ProductFilterRequestModel request);
}

class ProductFilterRemoteDataSourceImpl implements ProductFilterRemoteDataSource {
  const ProductFilterRemoteDataSourceImpl(this.client);
  final ApiClient client;

  @override
  Future<Response<dynamic>> execute(ProductFilterRequestModel request) {
    return client.get(
      url: BaseEndPoint.productFilterEndPointURL,
      params: request.queryParameters,
      headers: const {},
      
    );
  }
}
