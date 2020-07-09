import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:rozana_api_service/data/model/dto/banner_image.dart';
import 'package:rozana_api_service/data/model/dto/product.dart';
import 'package:rozana_api_service/data/model/dto/product_category.dart';
import 'package:rozana_api_service/data/model/dto/product_image.dart';
import 'package:rozana_api_service/data/model/dto/product_variant.dart';

part 'product_api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class ProductApiService extends ChopperService {
  static ProductApiService create([ChopperClient client]) =>
      _$ProductApiService(client);

  @Get(path: "product-categories")
  Future<Response<List<ProductCategory>>> getAllProductCategories();

  @Get(path: "product-categories/{id}")
  Future<Response<ProductCategory>> getProductCategory(@Path() int id);

  @Post(path: "product-categories")
  Future<Response<ProductCategory>> createProductCategory(@Body() ProductCategory productCategory);

  @Put(path: "product-categories")
  Future<Response<ProductCategory>> updateProductCategory(@Body() ProductCategory productCategory);

  @Delete(path: "product-categories/{id}")
  Future<Response<String>> deleteProductCategory(@Path() int id);

  @Post(path: "product-categories/remove/{categoryId}")
  Future<Response<ProductCategory>> removeProductCategoryFromProduct(@Path() int categoryId, @Body() Product product);

  @Get(path: "products")
  Future<Response<List<Product>>> getAllProducts(
      {@Query("featured.equals") bool featured,
      @Query("page") int page = 0,
      @Query("size") int size = 20,
      @Query("sort") List<String> sort});

  @Get(path: "products")
  Future<Response<List<Product>>> getAllProductsForCategoryId(
      @Query("productCategoryId.equals") int productCategoryId,
      {@Query("featured.equals") bool featured,
      @Query("page") int page = 0,
      @Query("size") int size = 20,
      @Query("sort") List<String> sort});

  @Post(path: "products")
  Future<Response<Product>> createProduct(@Body() Product product);

  @Put(path: "products")
  Future<Response<Product>> updateProduct(@Body() Product product);

  @Get(path: "products/{id}")
  Future<Response<Product>> getProduct(@Path() int id);

  @Delete(path: "products/{id}")
  Future<Response<String>> deleteProduct(@Path() int id);

  @Get(path: "_search/products")
  Future<Response<List<Product>>> searchProducts(@Query("query") String query,
      {@Query("page") int page = 0,
      @Query("size") int size = 20,
      @Query("sort") List<String> sort});

  @Get(path: "banner-images")
  Future<Response<List<BannerImage>>> getAllBannerImages();

  @Get(path: "product-variants/product/{productName}")
  Future<Response<List<ProductVariant>>> getAllProductVariants(
      @Path() String productName);

  @Get(path: "products/count")
  Future<Response<int>> getProductCount();

  @Get(path: "/product-images/product/{id}")
  Future<Response<List<ProductImage>>> getAllProductImagesForProduct(
      @Path() int id);

  @Put(path: "/product-images")
  Future<Response<ProductImage>> updateProductImage(
      @Body() ProductImage productImage);

  @Post(path: "/product-images")
  Future<Response<ProductImage>> createProductImage(
      @Body() ProductImage productImage);

  @Get(path: "products/suggestions/{id}")
  Future<Response<List<Product>>> getSuggestedProducts(@Path() int id);
}
