part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const ShopEvent._();

  const factory ShopEvent.initial() = _ShopInitialEvent;
  const factory ShopEvent.loadProductListEvent() = _LoadProductListEvent;
  const factory ShopEvent.addToCartEvent(int quantity) = _AddToCartEvent;
  const factory ShopEvent.goHomeTabEvent() = _GoHomeTabEvent;
}
