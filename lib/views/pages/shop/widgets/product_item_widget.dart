import 'package:flutter/material.dart';
import 'package:testflutter/views/pages/shop/widgets/quantity_control.dart';

class ProductItemWidget extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String unit;
  final int quantity;

  const ProductItemWidget({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.unit,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Expanded(
            child: Image.network(
              productImage,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8.0),
          // Product Name
          Text(
            productName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 4.0),
          // Product Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productPrice,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(
                unit,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          // Quantity Selector and Cart Button
          const QuantityControl(),
        ],
      ),
    );
  }
}
