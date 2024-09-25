import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/views/pages/shop/bloc/shop_bloc.dart';
import 'package:testflutter/views/pages/shop/presentation/shop_body.dart';
import 'package:testflutter/views/pages/shop/widgets/shop_appbar.dart';

@RoutePage()
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ShopBloc()..add(const ShopEvent.loadProductListEvent()),
      child: BlocConsumer<ShopBloc, ShopState>(
        listenWhen: (previous, current) {
          if (current.click) {
            context.tabsRouter.setActiveIndex(0);
          }
          // Giả sử `state` có một trường `status` và bạn so sánh trạng thái đó
          final previousStatus = previous.loadProductStatus;
          final currentStatus = current.loadProductStatus;

          // Nếu status là lỗi hoặc có sự thay đổi status, trả về true
          if (currentStatus.isLoading) {
            return true;
          }
          return currentStatus != previousStatus;
        },
        listener: (context, state) {
          _onStatusChange(context, state);
        },
        builder: (context, state) {
          context.tabsRouter.setActiveIndex(0);
          return const Scaffold(
            backgroundColor: Colors.white,
            appBar: ShopAppbar(),
            body: ShopBody(),
          );
        },
      ),
    );
  }

  // Hàm xử lý khi status thay đổi
  void _onStatusChange(BuildContext context, ShopState state) {
    // Kiểm tra status và thực hiện các hành động cần thiết
    if (state.loadProductStatus.isError) {
      // Ví dụ: Hiển thị thông báo lỗi
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${state.loadProductStatus.toString()}')),
      );
    }
    // Thêm các xử lý khác nếu cần
  }
}
