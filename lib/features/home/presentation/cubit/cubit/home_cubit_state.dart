part of 'home_cubit_cubit.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState.initial() = _Initial;

  const factory HomeCubitState.productsLoading() = ProductsLoading;

  const factory HomeCubitState.productsSuccess(
    List<ProductEntity>? productsList,
  ) = ProductsSuccess;
  const factory HomeCubitState.productsError(ErrorHandler errorHandler) =
      ProductsError;
}
