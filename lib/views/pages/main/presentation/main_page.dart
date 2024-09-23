import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/app_routes/app_routes.gr.dart';
import 'package:testflutter/views/pages/main/bloc/bottom_navigation_bloc.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationBloc(),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return AutoTabsScaffold(
            routes: const [
              HomeRoute(),
              ShopRoute(),
              ChatRoute(),
              OrderRoute(),
              AccountRoute(),
            ],
            bottomNavigationBuilder: (_, tabsRouter) {
              tabsRouter.setActiveIndex(
                state.selectedIndex,
              );
              return BottomNavigationBar(
                currentIndex: state.selectedIndex,
                onTap: (index) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context
                        .read<BottomNavigationBloc>()
                        .add(BottomNavigationChangeTabEvent(index));
                    tabsRouter.setActiveIndex(index);
                  });
                },
                backgroundColor: Colors.grey[200],
                type: BottomNavigationBarType.fixed,
                items: [
                  _buildNavItem('homepage', 'Home'),
                  _buildNavItem('category', 'Shop'),
                  _buildNavItem('messenger', 'Chat'),
                  _buildNavItem('shop', 'Order'),
                  _buildNavItem('account', 'Account'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

BottomNavigationBarItem _buildNavItem(String iconName, String label) {
  return BottomNavigationBarItem(
    icon: Image.asset(
      'assets/icons/ic_bot_${iconName}.png',
      width: 24,
      height: 24,
    ),
    activeIcon: Image.asset(
      'assets/icons/ic_bot_${iconName}_focus.png',
      width: 24,
      height: 24,
    ),
    label: label,
  );
}
