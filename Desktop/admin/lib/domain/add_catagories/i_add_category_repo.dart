import 'package:admin/domain/add_catagories/models/category_model.dart';
import 'package:dartz/dartz.dart';

abstract class IAddCategoryRepo{
  Future<Either<String,List<Category>>> getCategoryList();
}