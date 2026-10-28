// GENERATED FILE - DO NOT EDIT BY HAND.
// Generated from an API response example.

class ProductsResponseEntity {
  const ProductsResponseEntity({
    this.success,
    this.data,
    this.pagination,
    this.filters,
  });

  final bool? success;
  final List<ProductsResponseDataItemEntity>? data;
  final ProductsResponsePaginationEntity? pagination;
  final ProductsResponseFiltersEntity? filters;
}

class ProductsResponseDataItemEntity {
  const ProductsResponseDataItemEntity({
    this.id,
    this.title,
    this.price,
    this.currency,
    this.image,
    this.desc,
    this.rating,
    this.size,
    this.tags,
    this.badge,
    this.inStock,
    this.quantity,
    this.category,
  });

  final int? id;
  final String? title;
  final double? price;
  final String? currency;
  final String? image;
  final String? desc;
  final double? rating;
  final String? size;
  final List<String>? tags;
  final String? badge;
  final bool? inStock;
  final int? quantity;
  final String? category;
}

class ProductsResponsePaginationEntity {
  const ProductsResponsePaginationEntity({
    this.page,
    this.limit,
    this.total,
    this.totalPages,
  });

  final int? page;
  final int? limit;
  final int? total;
  final int? totalPages;
}

class ProductsResponseFiltersEntity {
  const ProductsResponseFiltersEntity({
    this.categories,
    this.tags,
    this.sizes,
    this.badges,
  });

  final List<String>? categories;
  final List<String>? tags;
  final List<String>? sizes;
  final List<String>? badges;
}

