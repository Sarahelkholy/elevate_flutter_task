import 'package:elevate_flutter_task/core/networking/api_result.dart';
import 'package:elevate_flutter_task/features/home/domain/entities/product_entity.dart';

abstract interface class HomeRepo {
  Future<ApiResult<List<ProductEntity>>> getProducts();
}
