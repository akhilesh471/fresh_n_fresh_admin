part of 'add_products_bloc.dart';

@freezed
class AddProductsEvent with _$AddProductsEvent {
  const factory AddProductsEvent.addProducts({required Products model}) = _AddProducts;
}