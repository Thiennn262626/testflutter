import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/views/pages/main/bloc/bottom_navigation_bloc.dart';
import 'package:testflutter/views/pages/shop/bloc/shop_bloc.dart';

class ShopAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFD5262B),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // context.read<ShopPage>().tabsRouter.setActiveIndex(0);
              context
                  .read<BottomNavigationBloc>()
                  .add(const BottomNavigationChangeTabEvent(0));
              context.read<ShopBloc>().add(const ShopEvent.goHomeTabEvent());
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 240,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        BlocBuilder<ShopBloc, ShopState>(
          builder: (context, state) {
            final totalCart = state.totalCart ?? 0;
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: badges.Badge(
                badgeContent: Text(
                  totalCart.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
