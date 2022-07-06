import 'package:admin/domain/add_catagories/i_add_category_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:admin/domain/add_catagories/models/category_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAddCategoryRepo)
class AddCategoryRepository implements IAddCategoryRepo {
  @override
  Future<Either<String, List<Category>>> getCategoryList() async {
    dynamic list;

    try {
      var catagoryData = FirebaseFirestore.instance.collection('categories');
      var result = await catagoryData.get();
      list = result.docs.map((e) => Category.fromJson(e.data())).toList();
      
      return right(list);
    } catch (e) {
      return left('Error Something Wrong');
    }
  }
}
