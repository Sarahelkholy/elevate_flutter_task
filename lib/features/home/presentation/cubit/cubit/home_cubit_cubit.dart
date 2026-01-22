import 'package:elevate_flutter_task/core/networking/api_error_handler.dart';
import 'package:elevate_flutter_task/core/networking/api_result.dart';
import 'package:elevate_flutter_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_flutter_task/features/home/domain/repository/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit_state.dart';
part 'home_cubit_cubit.freezed.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  final HomeRepo _homeRepo;
  List<ProductEntity> allProducts = [];

  HomeCubitCubit(this._homeRepo) : super(HomeCubitState.initial());

  void getAllProducts() async {
    emit(HomeCubitState.productsLoading());

    final response = await _homeRepo.getProducts();

    response.when(
      success: (productsList) {
        allProducts = productsList;
        emit(HomeCubitState.productsSuccess(productsList));
      },
      failure: (errorHandler) {
        emit(HomeCubitState.productsError(errorHandler));
      },
    );
  }
}
