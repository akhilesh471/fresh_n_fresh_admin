
import 'package:admin/domain/add_catagories/models/category_model.dart';
import 'package:admin/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAddCategoryRepo{
  Future<Either<MainFailure,List<Category>>> getCategoryList();
}