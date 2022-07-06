import 'package:admin/domain/add_products/models/add_product_model.dart';
import 'package:dartz/dartz.dart';

abstract class IAddProductsRepo{
  Future<Either<String,List<Products>>> getProductsList();
}