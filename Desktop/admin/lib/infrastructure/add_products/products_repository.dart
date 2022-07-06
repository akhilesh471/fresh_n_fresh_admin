import 'dart:developer';

import 'package:admin/domain/add_products/i_add_products._repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:admin/domain/add_products/models/add_product_model.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: IAddProductsRepo)
class AddProductsRepository implements IAddProductsRepo{
  @override
  Future<Either<String, List<Products>>> getProductsList() async{
 print('helloo');
   List<Products> list;
    try {
      var productData = FirebaseFirestore.instance.collection('products');
    
      var result = await productData.get();
      list = result.docs.map((e) => Products.fromJson(e.data())).toList();
    print(list);
      return right(list);
    } catch (e) {
      print(e);
      return left('Error Something Wrong');
    }
  }
  }

