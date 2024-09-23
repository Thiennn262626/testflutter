import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String unit;
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final VoidCallback onHandleReslove;

  const ProductItemWidget({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.unit,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
    required this.onHandleReslove,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove, size: 16),
                    onPressed: onRemove,
                  ),
                  Text('$quantity'), // Hiển thị số lượng sản phẩm
                  IconButton(
                    icon: const Icon(Icons.add, size: 16),
                    onPressed: onAdd,
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.red),
                onPressed: onHandleReslove,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
