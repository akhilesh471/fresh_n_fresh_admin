// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model, List<File> imageList) addProducts,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProducts,
    required TResult Function() updateProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProducts value) deleteProducts,
    required TResult Function(_UpdateProducts value) updateProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductsEventCopyWith<$Res> {
  factory $AddProductsEventCopyWith(
          AddProductsEvent value, $Res Function(AddProductsEvent) then) =
      _$AddProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddProductsEventCopyWithImpl<$Res>
    implements $AddProductsEventCopyWith<$Res> {
  _$AddProductsEventCopyWithImpl(this._value, this._then);

  final AddProductsEvent _value;
  // ignore: unused_field
  final $Res Function(AddProductsEvent) _then;
}

/// @nodoc
abstract class _$$_AddProductsCopyWith<$Res> {
  factory _$$_AddProductsCopyWith(
          _$_AddProducts value, $Res Function(_$_AddProducts) then) =
      __$$_AddProductsCopyWithImpl<$Res>;
  $Res call({Products model, List<File> imageList});
}

/// @nodoc
class __$$_AddProductsCopyWithImpl<$Res>
    extends _$AddProductsEventCopyWithImpl<$Res>
    implements _$$_AddProductsCopyWith<$Res> {
  __$$_AddProductsCopyWithImpl(
      _$_AddProducts _value, $Res Function(_$_AddProducts) _then)
      : super(_value, (v) => _then(v as _$_AddProducts));

  @override
  _$_AddProducts get _value => super._value as _$_AddProducts;

  @override
  $Res call({
    Object? model = freezed,
    Object? imageList = freezed,
  }) {
    return _then(_$_AddProducts(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Products,
      imageList: imageList == freezed
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_AddProducts with DiagnosticableTreeMixin implements _AddProducts {
  const _$_AddProducts(
      {required this.model, required final List<File> imageList})
      : _imageList = imageList;

  @override
  final Products model;
  final List<File> _imageList;
  @override
  List<File> get imageList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsEvent.addProducts(model: $model, imageList: $imageList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductsEvent.addProducts'))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('imageList', imageList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProducts &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(_imageList));

  @JsonKey(ignore: true)
  @override
  _$$_AddProductsCopyWith<_$_AddProducts> get copyWith =>
      __$$_AddProductsCopyWithImpl<_$_AddProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model, List<File> imageList) addProducts,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProducts,
    required TResult Function() updateProducts,
  }) {
    return addProducts(model, imageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
  }) {
    return addProducts?.call(model, imageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
    required TResult orElse(),
  }) {
    if (addProducts != null) {
      return addProducts(model, imageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProducts value) deleteProducts,
    required TResult Function(_UpdateProducts value) updateProducts,
  }) {
    return addProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
  }) {
    return addProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
    required TResult orElse(),
  }) {
    if (addProducts != null) {
      return addProducts(this);
    }
    return orElse();
  }
}

abstract class _AddProducts implements AddProductsEvent {
  const factory _AddProducts(
      {required final Products model,
      required final List<File> imageList}) = _$_AddProducts;

  Products get model => throw _privateConstructorUsedError;
  List<File> get imageList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddProductsCopyWith<_$_AddProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllProductsCopyWith<$Res> {
  factory _$$_GetAllProductsCopyWith(
          _$_GetAllProducts value, $Res Function(_$_GetAllProducts) then) =
      __$$_GetAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllProductsCopyWithImpl<$Res>
    extends _$AddProductsEventCopyWithImpl<$Res>
    implements _$$_GetAllProductsCopyWith<$Res> {
  __$$_GetAllProductsCopyWithImpl(
      _$_GetAllProducts _value, $Res Function(_$_GetAllProducts) _then)
      : super(_value, (v) => _then(v as _$_GetAllProducts));

  @override
  _$_GetAllProducts get _value => super._value as _$_GetAllProducts;
}

/// @nodoc

class _$_GetAllProducts
    with DiagnosticableTreeMixin
    implements _GetAllProducts {
  const _$_GetAllProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsEvent.getAllProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddProductsEvent.getAllProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model, List<File> imageList) addProducts,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProducts,
    required TResult Function() updateProducts,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProducts value) deleteProducts,
    required TResult Function(_UpdateProducts value) updateProducts,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements AddProductsEvent {
  const factory _GetAllProducts() = _$_GetAllProducts;
}

/// @nodoc
abstract class _$$_DeleteProductsCopyWith<$Res> {
  factory _$$_DeleteProductsCopyWith(
          _$_DeleteProducts value, $Res Function(_$_DeleteProducts) then) =
      __$$_DeleteProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteProductsCopyWithImpl<$Res>
    extends _$AddProductsEventCopyWithImpl<$Res>
    implements _$$_DeleteProductsCopyWith<$Res> {
  __$$_DeleteProductsCopyWithImpl(
      _$_DeleteProducts _value, $Res Function(_$_DeleteProducts) _then)
      : super(_value, (v) => _then(v as _$_DeleteProducts));

  @override
  _$_DeleteProducts get _value => super._value as _$_DeleteProducts;
}

/// @nodoc

class _$_DeleteProducts
    with DiagnosticableTreeMixin
    implements _DeleteProducts {
  const _$_DeleteProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsEvent.deleteProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddProductsEvent.deleteProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model, List<File> imageList) addProducts,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProducts,
    required TResult Function() updateProducts,
  }) {
    return deleteProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
  }) {
    return deleteProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
    required TResult orElse(),
  }) {
    if (deleteProducts != null) {
      return deleteProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProducts value) deleteProducts,
    required TResult Function(_UpdateProducts value) updateProducts,
  }) {
    return deleteProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
  }) {
    return deleteProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
    required TResult orElse(),
  }) {
    if (deleteProducts != null) {
      return deleteProducts(this);
    }
    return orElse();
  }
}

abstract class _DeleteProducts implements AddProductsEvent {
  const factory _DeleteProducts() = _$_DeleteProducts;
}

/// @nodoc
abstract class _$$_UpdateProductsCopyWith<$Res> {
  factory _$$_UpdateProductsCopyWith(
          _$_UpdateProducts value, $Res Function(_$_UpdateProducts) then) =
      __$$_UpdateProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateProductsCopyWithImpl<$Res>
    extends _$AddProductsEventCopyWithImpl<$Res>
    implements _$$_UpdateProductsCopyWith<$Res> {
  __$$_UpdateProductsCopyWithImpl(
      _$_UpdateProducts _value, $Res Function(_$_UpdateProducts) _then)
      : super(_value, (v) => _then(v as _$_UpdateProducts));

  @override
  _$_UpdateProducts get _value => super._value as _$_UpdateProducts;
}

/// @nodoc

class _$_UpdateProducts
    with DiagnosticableTreeMixin
    implements _UpdateProducts {
  const _$_UpdateProducts();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsEvent.updateProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddProductsEvent.updateProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model, List<File> imageList) addProducts,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProducts,
    required TResult Function() updateProducts,
  }) {
    return updateProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
  }) {
    return updateProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model, List<File> imageList)? addProducts,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProducts,
    TResult Function()? updateProducts,
    required TResult orElse(),
  }) {
    if (updateProducts != null) {
      return updateProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProducts value) deleteProducts,
    required TResult Function(_UpdateProducts value) updateProducts,
  }) {
    return updateProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
  }) {
    return updateProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProducts value)? deleteProducts,
    TResult Function(_UpdateProducts value)? updateProducts,
    required TResult orElse(),
  }) {
    if (updateProducts != null) {
      return updateProducts(this);
    }
    return orElse();
  }
}

abstract class _UpdateProducts implements AddProductsEvent {
  const factory _UpdateProducts() = _$_UpdateProducts;
}

/// @nodoc
mixin _$AddProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Products> get productList => throw _privateConstructorUsedError;
  Option<Either<String, List<Products>>> get productsFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductsStateCopyWith<AddProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductsStateCopyWith<$Res> {
  factory $AddProductsStateCopyWith(
          AddProductsState value, $Res Function(AddProductsState) then) =
      _$AddProductsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Products> productList,
      Option<Either<String, List<Products>>> productsFailureOrSuccessOption});
}

/// @nodoc
class _$AddProductsStateCopyWithImpl<$Res>
    implements $AddProductsStateCopyWith<$Res> {
  _$AddProductsStateCopyWithImpl(this._value, this._then);

  final AddProductsState _value;
  // ignore: unused_field
  final $Res Function(AddProductsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? productList = freezed,
    Object? productsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      productsFailureOrSuccessOption: productsFailureOrSuccessOption == freezed
          ? _value.productsFailureOrSuccessOption
          : productsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Products>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductListCopyWith<$Res>
    implements $AddProductsStateCopyWith<$Res> {
  factory _$$_ProductListCopyWith(
          _$_ProductList value, $Res Function(_$_ProductList) then) =
      __$$_ProductListCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Products> productList,
      Option<Either<String, List<Products>>> productsFailureOrSuccessOption});
}

/// @nodoc
class __$$_ProductListCopyWithImpl<$Res>
    extends _$AddProductsStateCopyWithImpl<$Res>
    implements _$$_ProductListCopyWith<$Res> {
  __$$_ProductListCopyWithImpl(
      _$_ProductList _value, $Res Function(_$_ProductList) _then)
      : super(_value, (v) => _then(v as _$_ProductList));

  @override
  _$_ProductList get _value => super._value as _$_ProductList;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? productList = freezed,
    Object? productsFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ProductList(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: productList == freezed
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      productsFailureOrSuccessOption: productsFailureOrSuccessOption == freezed
          ? _value.productsFailureOrSuccessOption
          : productsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Products>>>,
    ));
  }
}

/// @nodoc

class _$_ProductList with DiagnosticableTreeMixin implements _ProductList {
  const _$_ProductList(
      {required this.isLoading,
      required final List<Products> productList,
      required this.productsFailureOrSuccessOption})
      : _productList = productList;

  @override
  final bool isLoading;
  final List<Products> _productList;
  @override
  List<Products> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  final Option<Either<String, List<Products>>> productsFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsState(isLoading: $isLoading, productList: $productList, productsFailureOrSuccessOption: $productsFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('productList', productList))
      ..add(DiagnosticsProperty(
          'productsFailureOrSuccessOption', productsFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductList &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality().equals(
                other.productsFailureOrSuccessOption,
                productsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(productsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ProductListCopyWith<_$_ProductList> get copyWith =>
      __$$_ProductListCopyWithImpl<_$_ProductList>(this, _$identity);
}

abstract class _ProductList implements AddProductsState {
  const factory _ProductList(
      {required final bool isLoading,
      required final List<Products> productList,
      required final Option<Either<String, List<Products>>>
          productsFailureOrSuccessOption}) = _$_ProductList;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Products> get productList => throw _privateConstructorUsedError;
  @override
  Option<Either<String, List<Products>>> get productsFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListCopyWith<_$_ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}
