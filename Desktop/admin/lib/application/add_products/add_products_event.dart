part of 'add_products_bloc.dart';

@freezed
class AddProductsEvent with _$AddProductsEvent {
  const factory AddProductsEvent.addProducts({
    required Products model,
    required List<File> imageList,
  }) = _AddProducts;
  const factory AddProductsEvent.getAllProducts() = _GetAllProducts;
  const factory AddProductsEvent.deleteProducts()=_DeleteProducts;
  const factory AddProductsEvent.updateProducts()=_UpdateProducts;
}
