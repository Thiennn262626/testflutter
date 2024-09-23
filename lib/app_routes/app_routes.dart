import 'package:auto_route/auto_route.dart';
import 'package:testflutter/app_routes/app_routes.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Dialog,Route',
)
class AppAutoRoute extends $AppAutoRoute {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'shop', page: ShopRoute.page),
        AutoRoute(path: 'chat', page: ChatRoute.page),
        AutoRoute(path: 'order', page: OrderRoute.page),
        AutoRoute(path: 'account', page: AccountRoute.page),
      ],
    ),
    // Thêm các route khác ở đây
    // AutoRoute(path: '/shopping-cart', page: ShoppingCartRoute.page),
    // AutoRoute(path: '/product/:id', page: ProductDetailsRoute.page),
  ];
}
