import 'dart:convert';

List<ProductModel> shoeModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

class ProductModel {
  String id;
  String name;
  String imageUrl;
  String price;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        imageUrl: json["imageUrl"],
        price: json["price"],
      );
}
