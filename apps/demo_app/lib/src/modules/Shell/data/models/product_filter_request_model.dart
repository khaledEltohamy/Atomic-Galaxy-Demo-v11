// GENERATED FILE - DO NOT EDIT BY HAND.
import '../../domain/entities/product_filter_request_entity.dart';

class ProductFilterRequestModel extends ProductFilterRequestEntity {
  const ProductFilterRequestModel({
    super.category,
  });

  factory ProductFilterRequestModel.fromEntity(
    ProductFilterRequestEntity entity,
  ) => ProductFilterRequestModel(
    category: entity.category,
  );

  factory ProductFilterRequestModel.fromValues(
    Map<String, String> values, {
    Map<String, Object?> defaults = const {},
  }) => ProductFilterRequestModel(
      category: _category(values, defaults),
  );

  @override
  Map<String, dynamic> get queryParameters => {
      'category': category?.toString(),
  };

  @override
  Map<String, dynamic> toJson() => {

  };
}

String? _category(Map<String, String> values, Map<String, Object?> defaults) => values["category"] ?? (defaults["category"] as String?);
