part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategoryList() = _GetCategoryList;
  const factory CategoryEvent.addCategoryList({required Category model}) = _AddCategoryList;
  const factory CategoryEvent.updateCategoryList({required String id,required TextEditingController newName }) = _UpdateCategoryList;
  // const factory CategoryEvent.deleteCategoryList({required String name}) = _DeleteCategoryList;
   const factory CategoryEvent.deleteCategoryList({required String id}) = _DeleteCategoryList;
}