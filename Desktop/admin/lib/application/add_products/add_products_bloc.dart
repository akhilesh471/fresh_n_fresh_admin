import 'dart:developer';
import 'dart:io';
import 'package:admin/domain/add_products/i_add_products._repo.dart';
import 'package:admin/domain/add_products/models/add_product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_products_event.dart';
part 'add_products_state.dart';
part 'add_products_bloc.freezed.dart';

@injectable
class AddProductsBloc extends Bloc<AddProductsEvent, AddProductsState> {
  final IAddProductsRepo _iAddProductsRepo;
  AddProductsBloc(this._iAddProductsRepo) : super(AddProductsState.initial()) {
    on<_AddProducts>((event, emit) async {
      List<String> imgRef=[];
      String imageUrl;
      final json = event.model.toJson();
      for (var img in event.imageList) {
        var storageImage = FirebaseStorage.instance.ref().child(img.path);
        var task = storageImage.putFile(img);
        await task.whenComplete(() async {
          try {
            imageUrl = await storageImage.getDownloadURL();
            imgRef.add(imageUrl);
          } catch (onError) {
            log("Error");
          }
        });
      }
      await FirebaseFirestore.instance
          .collection('products')
          .add(json)
          .then((value) => value.update({'id': value.id, 'image': imgRef}));
    });

    on<_GetAllProducts>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          productsFailureOrSuccessOption: none(),
        ),
      );

      final Either<String, List<Products>> productOption =
          await _iAddProductsRepo.getProductsList();
      emit(
        productOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            productsFailureOrSuccessOption: Some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
              isLoading: false,
              productsFailureOrSuccessOption: Some(
                right(success),
              ),
              productList: success),
        ),
      );
    });
  }
}
