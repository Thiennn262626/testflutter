import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testflutter/views/pages/shop/bloc/shop_bloc.dart';

class QuantityControl extends StatefulWidget {
  const QuantityControl({super.key});

  @override
  State<QuantityControl> createState() => _QuantityControlState();
}

class _QuantityControlState extends State<QuantityControl> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = 0;
  }

  void _addToCart() {
    if (quantity > 0) {
      context.read<ShopBloc>().add(ShopEvent.addToCartEvent(quantity));
      setState(() {
        quantity = 0;
      });
    }
  }

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove, size: 16),
              onPressed: _decrementQuantity,
            ),
            Text('$quantity'),
            IconButton(
              icon: const Icon(Icons.add, size: 16),
              onPressed: _incrementQuantity,
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart, color: Colors.red),
          onPressed: _addToCart,
        ),
      ],
    );
  }
}
