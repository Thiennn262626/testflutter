import 'package:flutter/material.dart';

class VendorItem extends StatelessWidget {
  const VendorItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      margin: const EdgeInsets.all(4),
      child: Center(
        child: Image.network(
          image,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
                Icons.error); // Hiển thị icon lỗi nếu không tải được ảnh
          },
        ),
      ),
    );
  }
}
