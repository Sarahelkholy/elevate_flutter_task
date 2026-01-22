import 'package:elevate_flutter_task/core/networking/api_error_handler.dart';
import 'package:elevate_flutter_task/core/networking/api_result.dart';
import 'package:elevate_flutter_task/features/home/data/datasource/home_api_service.dart';
import 'package:elevate_flutter_task/features/home/data/models/product_model.dart';
import 'package:elevate_flutter_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_flutter_task/features/home/domain/repository/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepoImp(this._homeApiService);

  @override
  Future<ApiResult<List<ProductEntity>>> getProducts() async {
    try {
      final response = await _homeApiService.getProducts();

      final products = response.map((model) => model.toEntity()).toList();

      return ApiResult.success(products);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
