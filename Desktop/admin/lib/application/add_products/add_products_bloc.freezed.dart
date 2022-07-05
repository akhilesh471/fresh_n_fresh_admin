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
  Products get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model) addProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model)? addProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model)? addProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductsEventCopyWith<AddProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductsEventCopyWith<$Res> {
  factory $AddProductsEventCopyWith(
          AddProductsEvent value, $Res Function(AddProductsEvent) then) =
      _$AddProductsEventCopyWithImpl<$Res>;
  $Res call({Products model});
}

/// @nodoc
class _$AddProductsEventCopyWithImpl<$Res>
    implements $AddProductsEventCopyWith<$Res> {
  _$AddProductsEventCopyWithImpl(this._value, this._then);

  final AddProductsEvent _value;
  // ignore: unused_field
  final $Res Function(AddProductsEvent) _then;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc
abstract class _$$_AddProductsCopyWith<$Res>
    implements $AddProductsEventCopyWith<$Res> {
  factory _$$_AddProductsCopyWith(
          _$_AddProducts value, $Res Function(_$_AddProducts) then) =
      __$$_AddProductsCopyWithImpl<$Res>;
  @override
  $Res call({Products model});
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
  }) {
    return _then(_$_AddProducts(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc

class _$_AddProducts with DiagnosticableTreeMixin implements _AddProducts {
  const _$_AddProducts({required this.model});

  @override
  final Products model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsEvent.addProducts(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductsEvent.addProducts'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProducts &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_AddProductsCopyWith<_$_AddProducts> get copyWith =>
      __$$_AddProductsCopyWithImpl<_$_AddProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products model) addProducts,
  }) {
    return addProducts(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Products model)? addProducts,
  }) {
    return addProducts?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products model)? addProducts,
    required TResult orElse(),
  }) {
    if (addProducts != null) {
      return addProducts(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProducts value) addProducts,
  }) {
    return addProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
  }) {
    return addProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProducts value)? addProducts,
    required TResult orElse(),
  }) {
    if (addProducts != null) {
      return addProducts(this);
    }
    return orElse();
  }
}

abstract class _AddProducts implements AddProductsEvent {
  const factory _AddProducts({required final Products model}) = _$_AddProducts;

  @override
  Products get model => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductsCopyWith<_$_AddProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Products> get productList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductsStateCopyWith<AddProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductsStateCopyWith<$Res> {
  factory $AddProductsStateCopyWith(
          AddProductsState value, $Res Function(AddProductsState) then) =
      _$AddProductsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Products> productList});
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
  $Res call({bool isLoading, List<Products> productList});
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
    ));
  }
}

/// @nodoc

class _$_ProductList with DiagnosticableTreeMixin implements _ProductList {
  const _$_ProductList(
      {required this.isLoading, required final List<Products> productList})
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductsState(isLoading: $isLoading, productList: $productList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('productList', productList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductList &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  _$$_ProductListCopyWith<_$_ProductList> get copyWith =>
      __$$_ProductListCopyWithImpl<_$_ProductList>(this, _$identity);
}

abstract class _ProductList implements AddProductsState {
  const factory _ProductList(
      {required final bool isLoading,
      required final List<Products> productList}) = _$_ProductList;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Products> get productList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListCopyWith<_$_ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}
