// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProductListEvent,
    required TResult Function(int quantity) addToCartEvent,
    required TResult Function() goHomeTabEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadProductListEvent,
    TResult? Function(int quantity)? addToCartEvent,
    TResult? Function()? goHomeTabEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProductListEvent,
    TResult Function(int quantity)? addToCartEvent,
    TResult Function()? goHomeTabEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShopInitialEvent value) initial,
    required TResult Function(_LoadProductListEvent value) loadProductListEvent,
    required TResult Function(_AddToCartEvent value) addToCartEvent,
    required TResult Function(_GoHomeTabEvent value) goHomeTabEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopInitialEvent value)? initial,
    TResult? Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult? Function(_AddToCartEvent value)? addToCartEvent,
    TResult? Function(_GoHomeTabEvent value)? goHomeTabEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopInitialEvent value)? initial,
    TResult Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult Function(_AddToCartEvent value)? addToCartEvent,
    TResult Function(_GoHomeTabEvent value)? goHomeTabEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res, ShopEvent>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res, $Val extends ShopEvent>
    implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShopInitialEventImplCopyWith<$Res> {
  factory _$$ShopInitialEventImplCopyWith(_$ShopInitialEventImpl value,
          $Res Function(_$ShopInitialEventImpl) then) =
      __$$ShopInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopInitialEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$ShopInitialEventImpl>
    implements _$$ShopInitialEventImplCopyWith<$Res> {
  __$$ShopInitialEventImplCopyWithImpl(_$ShopInitialEventImpl _value,
      $Res Function(_$ShopInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShopInitialEventImpl extends _ShopInitialEvent {
  const _$ShopInitialEventImpl() : super._();

  @override
  String toString() {
    return 'ShopEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProductListEvent,
    required TResult Function(int quantity) addToCartEvent,
    required TResult Function() goHomeTabEvent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadProductListEvent,
    TResult? Function(int quantity)? addToCartEvent,
    TResult? Function()? goHomeTabEvent,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProductListEvent,
    TResult Function(int quantity)? addToCartEvent,
    TResult Function()? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShopInitialEvent value) initial,
    required TResult Function(_LoadProductListEvent value) loadProductListEvent,
    required TResult Function(_AddToCartEvent value) addToCartEvent,
    required TResult Function(_GoHomeTabEvent value) goHomeTabEvent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopInitialEvent value)? initial,
    TResult? Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult? Function(_AddToCartEvent value)? addToCartEvent,
    TResult? Function(_GoHomeTabEvent value)? goHomeTabEvent,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopInitialEvent value)? initial,
    TResult Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult Function(_AddToCartEvent value)? addToCartEvent,
    TResult Function(_GoHomeTabEvent value)? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ShopInitialEvent extends ShopEvent {
  const factory _ShopInitialEvent() = _$ShopInitialEventImpl;
  const _ShopInitialEvent._() : super._();
}

/// @nodoc
abstract class _$$LoadProductListEventImplCopyWith<$Res> {
  factory _$$LoadProductListEventImplCopyWith(_$LoadProductListEventImpl value,
          $Res Function(_$LoadProductListEventImpl) then) =
      __$$LoadProductListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProductListEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$LoadProductListEventImpl>
    implements _$$LoadProductListEventImplCopyWith<$Res> {
  __$$LoadProductListEventImplCopyWithImpl(_$LoadProductListEventImpl _value,
      $Res Function(_$LoadProductListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadProductListEventImpl extends _LoadProductListEvent {
  const _$LoadProductListEventImpl() : super._();

  @override
  String toString() {
    return 'ShopEvent.loadProductListEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProductListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProductListEvent,
    required TResult Function(int quantity) addToCartEvent,
    required TResult Function() goHomeTabEvent,
  }) {
    return loadProductListEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadProductListEvent,
    TResult? Function(int quantity)? addToCartEvent,
    TResult? Function()? goHomeTabEvent,
  }) {
    return loadProductListEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProductListEvent,
    TResult Function(int quantity)? addToCartEvent,
    TResult Function()? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (loadProductListEvent != null) {
      return loadProductListEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShopInitialEvent value) initial,
    required TResult Function(_LoadProductListEvent value) loadProductListEvent,
    required TResult Function(_AddToCartEvent value) addToCartEvent,
    required TResult Function(_GoHomeTabEvent value) goHomeTabEvent,
  }) {
    return loadProductListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopInitialEvent value)? initial,
    TResult? Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult? Function(_AddToCartEvent value)? addToCartEvent,
    TResult? Function(_GoHomeTabEvent value)? goHomeTabEvent,
  }) {
    return loadProductListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopInitialEvent value)? initial,
    TResult Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult Function(_AddToCartEvent value)? addToCartEvent,
    TResult Function(_GoHomeTabEvent value)? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (loadProductListEvent != null) {
      return loadProductListEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadProductListEvent extends ShopEvent {
  const factory _LoadProductListEvent() = _$LoadProductListEventImpl;
  const _LoadProductListEvent._() : super._();
}

/// @nodoc
abstract class _$$AddToCartEventImplCopyWith<$Res> {
  factory _$$AddToCartEventImplCopyWith(_$AddToCartEventImpl value,
          $Res Function(_$AddToCartEventImpl) then) =
      __$$AddToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$AddToCartEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$AddToCartEventImpl>
    implements _$$AddToCartEventImplCopyWith<$Res> {
  __$$AddToCartEventImplCopyWithImpl(
      _$AddToCartEventImpl _value, $Res Function(_$AddToCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$AddToCartEventImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToCartEventImpl extends _AddToCartEvent {
  const _$AddToCartEventImpl(this.quantity) : super._();

  @override
  final int quantity;

  @override
  String toString() {
    return 'ShopEvent.addToCartEvent(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartEventImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      __$$AddToCartEventImplCopyWithImpl<_$AddToCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProductListEvent,
    required TResult Function(int quantity) addToCartEvent,
    required TResult Function() goHomeTabEvent,
  }) {
    return addToCartEvent(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadProductListEvent,
    TResult? Function(int quantity)? addToCartEvent,
    TResult? Function()? goHomeTabEvent,
  }) {
    return addToCartEvent?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProductListEvent,
    TResult Function(int quantity)? addToCartEvent,
    TResult Function()? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (addToCartEvent != null) {
      return addToCartEvent(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShopInitialEvent value) initial,
    required TResult Function(_LoadProductListEvent value) loadProductListEvent,
    required TResult Function(_AddToCartEvent value) addToCartEvent,
    required TResult Function(_GoHomeTabEvent value) goHomeTabEvent,
  }) {
    return addToCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopInitialEvent value)? initial,
    TResult? Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult? Function(_AddToCartEvent value)? addToCartEvent,
    TResult? Function(_GoHomeTabEvent value)? goHomeTabEvent,
  }) {
    return addToCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopInitialEvent value)? initial,
    TResult Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult Function(_AddToCartEvent value)? addToCartEvent,
    TResult Function(_GoHomeTabEvent value)? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (addToCartEvent != null) {
      return addToCartEvent(this);
    }
    return orElse();
  }
}

abstract class _AddToCartEvent extends ShopEvent {
  const factory _AddToCartEvent(final int quantity) = _$AddToCartEventImpl;
  const _AddToCartEvent._() : super._();

  int get quantity;
  @JsonKey(ignore: true)
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoHomeTabEventImplCopyWith<$Res> {
  factory _$$GoHomeTabEventImplCopyWith(_$GoHomeTabEventImpl value,
          $Res Function(_$GoHomeTabEventImpl) then) =
      __$$GoHomeTabEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoHomeTabEventImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$GoHomeTabEventImpl>
    implements _$$GoHomeTabEventImplCopyWith<$Res> {
  __$$GoHomeTabEventImplCopyWithImpl(
      _$GoHomeTabEventImpl _value, $Res Function(_$GoHomeTabEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoHomeTabEventImpl extends _GoHomeTabEvent {
  const _$GoHomeTabEventImpl() : super._();

  @override
  String toString() {
    return 'ShopEvent.goHomeTabEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoHomeTabEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProductListEvent,
    required TResult Function(int quantity) addToCartEvent,
    required TResult Function() goHomeTabEvent,
  }) {
    return goHomeTabEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadProductListEvent,
    TResult? Function(int quantity)? addToCartEvent,
    TResult? Function()? goHomeTabEvent,
  }) {
    return goHomeTabEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProductListEvent,
    TResult Function(int quantity)? addToCartEvent,
    TResult Function()? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (goHomeTabEvent != null) {
      return goHomeTabEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShopInitialEvent value) initial,
    required TResult Function(_LoadProductListEvent value) loadProductListEvent,
    required TResult Function(_AddToCartEvent value) addToCartEvent,
    required TResult Function(_GoHomeTabEvent value) goHomeTabEvent,
  }) {
    return goHomeTabEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShopInitialEvent value)? initial,
    TResult? Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult? Function(_AddToCartEvent value)? addToCartEvent,
    TResult? Function(_GoHomeTabEvent value)? goHomeTabEvent,
  }) {
    return goHomeTabEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShopInitialEvent value)? initial,
    TResult Function(_LoadProductListEvent value)? loadProductListEvent,
    TResult Function(_AddToCartEvent value)? addToCartEvent,
    TResult Function(_GoHomeTabEvent value)? goHomeTabEvent,
    required TResult orElse(),
  }) {
    if (goHomeTabEvent != null) {
      return goHomeTabEvent(this);
    }
    return orElse();
  }
}

abstract class _GoHomeTabEvent extends ShopEvent {
  const factory _GoHomeTabEvent() = _$GoHomeTabEventImpl;
  const _GoHomeTabEvent._() : super._();
}

/// @nodoc
mixin _$ShopState {
  ApiStatus get loadProductStatus => throw _privateConstructorUsedError;
  List<Product> get productList => throw _privateConstructorUsedError;
  int get totalCart => throw _privateConstructorUsedError;
  bool get click => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {ApiStatus loadProductStatus,
      List<Product> productList,
      int totalCart,
      bool click});

  $ApiStatusCopyWith<$Res> get loadProductStatus;
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadProductStatus = null,
    Object? productList = null,
    Object? totalCart = null,
    Object? click = null,
  }) {
    return _then(_value.copyWith(
      loadProductStatus: null == loadProductStatus
          ? _value.loadProductStatus
          : loadProductStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      totalCart: null == totalCart
          ? _value.totalCart
          : totalCart // ignore: cast_nullable_to_non_nullable
              as int,
      click: null == click
          ? _value.click
          : click // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get loadProductStatus {
    return $ApiStatusCopyWith<$Res>(_value.loadProductStatus, (value) {
      return _then(_value.copyWith(loadProductStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutStateImplCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$CheckoutStateImplCopyWith(
          _$CheckoutStateImpl value, $Res Function(_$CheckoutStateImpl) then) =
      __$$CheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus loadProductStatus,
      List<Product> productList,
      int totalCart,
      bool click});

  @override
  $ApiStatusCopyWith<$Res> get loadProductStatus;
}

/// @nodoc
class __$$CheckoutStateImplCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$CheckoutStateImpl>
    implements _$$CheckoutStateImplCopyWith<$Res> {
  __$$CheckoutStateImplCopyWithImpl(
      _$CheckoutStateImpl _value, $Res Function(_$CheckoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadProductStatus = null,
    Object? productList = null,
    Object? totalCart = null,
    Object? click = null,
  }) {
    return _then(_$CheckoutStateImpl(
      loadProductStatus: null == loadProductStatus
          ? _value.loadProductStatus
          : loadProductStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      totalCart: null == totalCart
          ? _value.totalCart
          : totalCart // ignore: cast_nullable_to_non_nullable
              as int,
      click: null == click
          ? _value.click
          : click // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckoutStateImpl extends _CheckoutState {
  const _$CheckoutStateImpl(
      {this.loadProductStatus = const ApiStatus.initial(),
      final List<Product> productList = const [],
      this.totalCart = 0,
      this.click = false})
      : _productList = productList,
        super._();

  @override
  @JsonKey()
  final ApiStatus loadProductStatus;
  final List<Product> _productList;
  @override
  @JsonKey()
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  @JsonKey()
  final int totalCart;
  @override
  @JsonKey()
  final bool click;

  @override
  String toString() {
    return 'ShopState(loadProductStatus: $loadProductStatus, productList: $productList, totalCart: $totalCart, click: $click)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutStateImpl &&
            (identical(other.loadProductStatus, loadProductStatus) ||
                other.loadProductStatus == loadProductStatus) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.totalCart, totalCart) ||
                other.totalCart == totalCart) &&
            (identical(other.click, click) || other.click == click));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadProductStatus,
      const DeepCollectionEquality().hash(_productList), totalCart, click);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      __$$CheckoutStateImplCopyWithImpl<_$CheckoutStateImpl>(this, _$identity);
}

abstract class _CheckoutState extends ShopState {
  const factory _CheckoutState(
      {final ApiStatus loadProductStatus,
      final List<Product> productList,
      final int totalCart,
      final bool click}) = _$CheckoutStateImpl;
  const _CheckoutState._() : super._();

  @override
  ApiStatus get loadProductStatus;
  @override
  List<Product> get productList;
  @override
  int get totalCart;
  @override
  bool get click;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
