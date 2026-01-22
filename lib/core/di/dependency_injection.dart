import 'package:dio/dio.dart';
import 'package:elevate_flutter_task/core/networking/dio_factory.dart';
import 'package:elevate_flutter_task/features/home/data/datasource/home_api_service.dart';
import 'package:elevate_flutter_task/features/home/data/repository/home_repo_impl.dart';
import 'package:elevate_flutter_task/features/home/domain/repository/home_repo.dart';
import 'package:elevate_flutter_task/features/home/domain/usecases/get_all_products.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & apiServer
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImp(getIt()));

  // products

  getIt.registerLazySingleton<GetAllProducts>(() => GetAllProducts(getIt()));
}
