// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/add_category/category_bloc.dart' as _i8;
import '../../../application/add_products/add_products_bloc.dart' as _i7;
import '../../../infrastructure/add_category/category_repository.dart' as _i4;
import '../../../infrastructure/add_products/products_repository.dart' as _i6;
import '../../add_catagories/i_add_category_repo.dart' as _i3;
import '../../add_products/i_add_products._repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAddCategoryRepo>(() => _i4.AddCategoryRepository());
  gh.lazySingleton<_i5.IAddProductsRepo>(() => _i6.AddProductsRepository());
  gh.factory<_i7.AddProductsBloc>(
      () => _i7.AddProductsBloc(get<_i5.IAddProductsRepo>()));
  gh.factory<_i8.CategoryBloc>(
      () => _i8.CategoryBloc(get<_i3.IAddCategoryRepo>()));
  return get;
}
