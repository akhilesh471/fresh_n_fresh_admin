import 'package:admin/domain/add_catagories/i_add_category_repo.dart';
import 'package:admin/domain/add_catagories/models/category_model.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_event.dart';
part 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final IAddCategoryRepo _categoryRepo;
  CategoryBloc(this._categoryRepo) : super(CategoryState.initial()) {
    on<_AddCategoryList>((event, emit) async {
      final json = event.model.toJson();
      await FirebaseFirestore.instance
          .collection('categories')
          .add(json)
          .then((value) => value.update({'id': value.id}));
      add(const _GetCategoryList());
    });

    on<_DeleteCategoryList>((event, emit) async {
      final delCategory =
          FirebaseFirestore.instance.collection('categories').doc(event.id);
      await delCategory.delete();
      add(const _GetCategoryList());
    });

    on<_GetCategoryList>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          categoryFailureOrSuccessOption: none(),
        ),
      );
      final Either<String, List<Category>> categoryOptions =
          await _categoryRepo.getCategoryList();
      emit(
        categoryOptions.fold(
          (failure) => state.copyWith(
            isLoading: false,
            categoryFailureOrSuccessOption: Some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
              isLoading: false,
              categoryFailureOrSuccessOption: Some(
                right(success),
              ),
              categoryList: success),
        ),
      );
    });
  }
}
