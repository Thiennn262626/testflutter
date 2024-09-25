part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const ShopState._();

  const factory ShopState({
    @Default(ApiStatus.initial()) ApiStatus loadProductStatus,
    @Default([]) List<Product> productList,
    @Default(0) int totalCart,
    @Default(false) bool click,
  }) = _CheckoutState;
}
