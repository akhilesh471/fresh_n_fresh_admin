import 'package:admin/domain/add_products/models/add_product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_products_event.dart';
part 'add_products_state.dart';
part 'add_products_bloc.freezed.dart';

class AddProductsBloc extends Bloc<AddProductsEvent, AddProductsState> {
  AddProductsBloc() : super(AddProductsState.initial()) {
    on<_AddProducts>((event, emit)async {
  final json = event.model.toJson();
      await FirebaseFirestore.instance
          .collection('products')
          .add(json)
          .then((value) => value.update({'id': value.id}));
    });
  }
}
