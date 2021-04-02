// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProductApiService extends ProductApiService {
  _$ProductApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductApiService;

  @override
  Future<Response<List<ProductCategory>>> getAllProductCategories() {
    final $url = '/api/product-categories';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProductCategory>, ProductCategory>($request);
  }

  @override
  Future<Response<ProductCategory>> getProductCategory(int id) {
    final $url = '/api/product-categories/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProductCategory, ProductCategory>($request);
  }

  @override
  Future<Response<ProductCategory>> createProductCategory(
      ProductCategory productCategory) {
    final $url = '/api/product-categories';
    final $body = productCategory;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductCategory, ProductCategory>($request);
  }

  @override
  Future<Response<ProductCategory>> updateProductCategory(
      ProductCategory productCategory) {
    final $url = '/api/product-categories';
    final $body = productCategory;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProductCategory, ProductCategory>($request);
  }

  @override
  Future<Response<String>> deleteProductCategory(int id) {
    final $url = '/api/product-categories/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ProductCategory>> removeProductCategoryFromProduct(
      int categoryId, List<Product> product) {
    final $url = '/api/product-categories/remove/$categoryId';
    final $body = product;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductCategory, ProductCategory>($request);
  }

  @override
  Future<Response<List<Product>>> getAllProducts(
      {bool featured = false,
      int page = 0,
      int size = 20,
      List<String>? sort}) {
    final $url = '/api/products';
    final $params = <String, dynamic>{
      'featured.equals': featured,
      'page': page,
      'size': size,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<List<Product>>> getAllProductsForCategoryId(
      int productCategoryId,
      {bool featured = false,
      int page = 0,
      int size = 20,
      List<String>? sort}) {
    final $url = '/api/products';
    final $params = <String, dynamic>{
      'productCategoryId.equals': productCategoryId,
      'featured.equals': featured,
      'page': page,
      'size': size,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<Product>> createProduct(Product product) {
    final $url = '/api/products';
    final $body = product;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Product, Product>($request);
  }

  @override
  Future<Response<Product>> updateProduct(Product product) {
    final $url = '/api/products';
    final $body = product;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<Product, Product>($request);
  }

  @override
  Future<Response<Product>> getProduct(int id) {
    final $url = '/api/products/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Product, Product>($request);
  }

  @override
  Future<Response<String>> deleteProduct(int id) {
    final $url = '/api/products/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<Product>>> searchProducts(String query,
      {int page = 0, int size = 20, List<String>? sort}) {
    final $url = '/api/_search/products';
    final $params = <String, dynamic>{
      'query': query,
      'page': page,
      'size': size,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Product>, Product>($request);
  }

  @override
  Future<Response<List<BannerImage>>> getAllBannerImages() {
    final $url = '/api/banner-images';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<BannerImage>, BannerImage>($request);
  }

  @override
  Future<Response<List<ProductVariant>>> getAllProductVariants(
      String productName) {
    final $url = '/api/product-variants/product/$productName';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProductVariant>, ProductVariant>($request);
  }

  @override
  Future<Response<int>> getProductCount() {
    final $url = '/api/products/count';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<ProductImage>>> getAllProductImagesForProduct(int id) {
    final $url = '/api/product-images/product/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProductImage>, ProductImage>($request);
  }

  @override
  Future<Response<ProductImage>> updateProductImage(ProductImage productImage) {
    final $url = '/api/product-images';
    final $body = productImage;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ProductImage, ProductImage>($request);
  }

  @override
  Future<Response<ProductImage>> createProductImage(ProductImage productImage) {
    final $url = '/api/product-images';
    final $body = productImage;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProductImage, ProductImage>($request);
  }

  @override
  Future<Response<List<Product>>> getSuggestedProducts(int id) {
    final $url = '/api/products/suggestions/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Product>, Product>($request);
  }
}
