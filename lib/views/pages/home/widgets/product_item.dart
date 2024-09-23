import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.image,
    required this.productName,
    required this.productPrice,
  });

  final String image;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hiển thị ảnh sản phẩm
          Expanded(
            child: Image.network(
              image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                    Icons.error); // Hiển thị icon lỗi nếu không tải được ảnh
              },
            ),
          ),
          const SizedBox(height: 4), // Khoảng cách giữa ảnh và tên
          // Hiển thị tên sản phẩm
          Text(
            productName,
            textAlign: TextAlign.left, // Căn trái
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          // Hiển thị giá sản phẩm
          Text(
            '\$' + productPrice,
            style: TextStyle(
              color: Color(0xFFD5262B),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
