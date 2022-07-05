part of 'add_products_bloc.dart';

@freezed
class AddProductsState with _$AddProductsState {
  const factory AddProductsState({
    required bool isLoading,
    required List<Products> productList,
  }) = _ProductList;

  factory AddProductsState.initial() {
    return const AddProductsState(isLoading: false, productList: []);
  }
}
