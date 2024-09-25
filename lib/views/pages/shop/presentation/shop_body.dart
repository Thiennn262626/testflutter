import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/core/app_theme.dart';
import 'package:testflutter/views/pages/shop/bloc/shop_bloc.dart';
import 'package:testflutter/views/pages/shop/data/temp.dart';
import 'package:testflutter/views/pages/shop/widgets/category_item.dart';
import 'package:testflutter/views/pages/shop/widgets/product_item_widget.dart';

class ShopBody extends StatelessWidget {
  const ShopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        if (state.loadProductStatus.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.loadProductStatus.isError) {
          return const Center(
            child: Text('Error loading products'),
          );
        }

        final products = state.productList;

        return Column(
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
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
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
                itemCount: simpleCollection.length,
                itemBuilder: (context, index) {
                  final category = simpleCollection[index];
                  return CategoryItem(
                    name: category['name']!,
                    image: category['image']!,
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
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductItemWidget(
                    productName: product.name,
                    productImage: product.image,
                    productPrice: product.price.toString(),
                    unit: product.unit,
                    quantity: 1,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
