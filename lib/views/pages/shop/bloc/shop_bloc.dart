import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testflutter/common/bloc/api_status.dart';
import 'package:testflutter/domain/entities/product_entity.dart';
import 'package:testflutter/domain/repo/product_repo.dart';

part 'shop_bloc.freezed.dart';
part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(const ShopState()) {
    on<_LoadProductListEvent>(_onLoadProductList);
    on<_AddToCartEvent>(_onAddToCart);
    on<_GoHomeTabEvent>(_onGoHomeTab);
  }
  final ProductRepoIml productRepo = ProductRepoIml();
  Future<void> _onLoadProductList(
      _LoadProductListEvent event, Emitter<ShopState> emit) async {
    try {
      emit(state.copyWith(loadProductStatus: const ApiStatus.loading()));

      // Giả lập việc tải danh sách sản phẩm từ API hoặc database
      await Future.delayed(const Duration(seconds: 1));

      // Danh sách sản phẩm mẫu
      final productList = await productRepo.getProductList();

      emit(
        state.copyWith(
          productList: productList,
          loadProductStatus: const ApiStatus.done(),
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          loadProductStatus:
              const ApiStatus.error('error for loading product list'),
        ),
      );
    }
  }

  void _onAddToCart(_AddToCartEvent event, Emitter<ShopState> emit) {
    emit(state.copyWith(totalCart: state.totalCart + event.quantity));
  }

  FutureOr<void> _onGoHomeTab(event, Emitter<ShopState> emit) {
    emit(
      state.copyWith(click: true),
    );

    emit(
      state.copyWith(click: false),
    );
  }
}
