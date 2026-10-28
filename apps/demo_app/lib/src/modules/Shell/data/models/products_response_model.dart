// GENERATED FILE - DO NOT EDIT BY HAND.
import '../../domain/entities/products_response_entity.dart';

class ProductsResponseModel extends ProductsResponseEntity {
  const ProductsResponseModel({
    super.success,
    super.data,
    super.pagination,
    super.filters,
  });

  factory ProductsResponseModel.fromJson(Object? json) {
    final data = _mapOf(json);
    return ProductsResponseModel(
      success: data["success"] as bool?,
      data: (data["data"] as List?)?.whereType<Map>().map((item) => ProductsResponseDataItemModel.fromJson(item)).toList(),
      pagination: data["pagination"] is Map ? ProductsResponsePaginationModel.fromJson(data["pagination"]) : null,
      filters: data["filters"] is Map ? ProductsResponseFiltersModel.fromJson(data["filters"]) : null,
    );
  }
}

class ProductsResponseDataItemModel extends ProductsResponseDataItemEntity {
  const ProductsResponseDataItemModel({
    super.id,
    super.title,
    super.price,
    super.currency,
    super.image,
    super.desc,
    super.rating,
    super.size,
    super.tags,
    super.badge,
    super.inStock,
    super.quantity,
    super.category,
  });

  factory ProductsResponseDataItemModel.fromJson(Object? json) {
    final data = _mapOf(json);
    return ProductsResponseDataItemModel(
      id: (data["id"] as num?)?.toInt(),
      title: data["title"] as String?,
      price: (data["price"] as num?)?.toDouble(),
      currency: data["currency"] as String?,
      image: data["image"] as String?,
      desc: data["desc"] as String?,
      rating: (data["rating"] as num?)?.toDouble(),
      size: data["size"] as String?,
      tags: (data["tags"] as List?)?.whereType<String>().toList(),
      badge: data["badge"] as String?,
      inStock: data["inStock"] as bool?,
      quantity: (data["quantity"] as num?)?.toInt(),
      category: data["category"] as String?,
    );
  }
}

class ProductsResponsePaginationModel extends ProductsResponsePaginationEntity {
  const ProductsResponsePaginationModel({
    super.page,
    super.limit,
    super.total,
    super.totalPages,
  });

  factory ProductsResponsePaginationModel.fromJson(Object? json) {
    final data = _mapOf(json);
    return ProductsResponsePaginationModel(
      page: (data["page"] as num?)?.toInt(),
      limit: (data["limit"] as num?)?.toInt(),
      total: (data["total"] as num?)?.toInt(),
      totalPages: (data["totalPages"] as num?)?.toInt(),
    );
  }
}

class ProductsResponseFiltersModel extends ProductsResponseFiltersEntity {
  const ProductsResponseFiltersModel({
    super.categories,
    super.tags,
    super.sizes,
    super.badges,
  });

  factory ProductsResponseFiltersModel.fromJson(Object? json) {
    final data = _mapOf(json);
    return ProductsResponseFiltersModel(
      categories: (data["categories"] as List?)?.whereType<String>().toList(),
      tags: (data["tags"] as List?)?.whereType<String>().toList(),
      sizes: (data["sizes"] as List?)?.whereType<String>().toList(),
      badges: (data["badges"] as List?)?.whereType<String>().toList(),
    );
  }
}

Map<String, dynamic> _mapOf(Object? value) =>
    value is Map ? Map<String, dynamic>.from(value) : <String, dynamic>{};
