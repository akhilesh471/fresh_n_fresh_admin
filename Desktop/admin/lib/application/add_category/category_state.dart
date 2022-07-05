part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required bool isLoading,
    required List<Category> categoryList,
    required Option<Either<MainFailure,List<Category>>> categoryFailureOrSuccessOption
  }) = _CategoryList;

  factory CategoryState.initial(){
    return const CategoryState(isLoading: false,categoryList: [],categoryFailureOrSuccessOption: None());
  }
}
