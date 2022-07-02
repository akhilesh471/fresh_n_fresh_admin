part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({required bool isLoading,required List<Category> categoryList, }) = _Initial;
}
