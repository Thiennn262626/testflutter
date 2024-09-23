import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/core/app_theme.dart';
import 'package:testflutter/views/pages/main/bloc/bottom_navigation_bloc.dart';
import 'package:testflutter/views/pages/shop/data/temp.dart';
import 'package:testflutter/views/pages/shop/widgets/category_item.dart';
import 'package:testflutter/views/pages/shop/widgets/product_item_widget.dart';

@RoutePage()
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //mỗi phân tử gồn name, image

  int totalItemsInCart = 0; // Lưu tổng số sản phẩm trong giỏ hàng
  List<int> productQuantities = [];

  void addToCart(int index) {
    setState(() {
      productQuantities[index] += 1;
    });
  }

  void removeFromCart(int index) {
    setState(() {
      if (productQuantities[index] > 0) {
        productQuantities[index] -= 1;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    productQuantities = List.generate(simpleProductItem.length, (index) => 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                context.tabsRouter.setActiveIndex(0);
                context
                    .read<BottomNavigationBloc>()
                    .add(BottomNavigationChangeTabEvent(0));
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
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: badges.Badge(
              badgeContent: Text(
                totalItemsInCart.toString(),
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
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Color(0xFFD5262B),
                      size: 24.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'All Vendor',
                      style: TextStyle(
                        fontSize: 16.0, // Kích thước văn bản
                        fontWeight: FontWeight.w500, // Độ đậm của văn bản
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios, // Mũi tên chỉ sang phải
                  color: Colors.black,
                  size: 16.0,
                ),
              ],
            ),
          ),
          Container(
            color: AppColorScheme.dark.primary,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: const Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13.0,
                ),
                Text(
                  'Agriculture',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13.0,
                ),
                Text(
                  'Nông Dược',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Horizontal ListView for categories
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:
                  simpleCollection.length, // Thay đổi số lượng category tùy ý
              itemBuilder: (context, index) {
                return CategoryItem(
                  name: simpleCollection[index]['name'].toString(),
                  image: simpleCollection[index]['image'].toString(),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          // GridView for products
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemCount: simpleProductItem.length,
              itemBuilder: (context, index) {
                return ProductItemWidget(
                  productName:
                      simpleProductItem[index]['productName'].toString(),
                  productImage:
                      simpleProductItem[index]['productImage'].toString(),
                  productPrice:
                      simpleProductItem[index]['productPrice'].toString(),
                  unit: simpleProductItem[index]['unit'].toString(),
                  quantity: productQuantities[index],
                  onAdd: () => addToCart(index),
                  onRemove: () => removeFromCart(index),
                  onHandleReslove: () {
                    totalItemsInCart += productQuantities[index];
                    setState(() {
                      productQuantities[index] = 0;
                      print("Total items in cart: $totalItemsInCart");
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
