import 'package:elevate_flutter_task/core/networking/api_result.dart';
import 'package:elevate_flutter_task/core/usecases/usecase.dart';
import 'package:elevate_flutter_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_flutter_task/features/home/domain/repository/home_repo.dart';

class GetAllProducts implements UseCase<List<ProductEntity>, NoParams> {
  final HomeRepo homeRepo;

  GetAllProducts(this.homeRepo);

  @override
  Future<ApiResult<List<ProductEntity>>> call(NoParams params) async {
    return await homeRepo.getProducts();
  }
}
