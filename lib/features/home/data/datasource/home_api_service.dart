import 'package:dio/dio.dart';
import 'package:elevate_flutter_task/core/networking/api_constants.dart';
import 'package:elevate_flutter_task/features/home/data/models/product_model.dart';

import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.productsEP)
  Future<List<ProductModel>> getProducts();
}
