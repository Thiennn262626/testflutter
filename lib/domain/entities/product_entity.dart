import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testflutter/data/models/product_model.dart';

part 'product_entity.g.dart';

@JsonSerializable()
class Product {
  String id;
  String name;
  String image;
  double price;
  String unit;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.unit,
  });

  factory Product.fromResponseModel(ProductModel model) {
    return Product(
      id: model.id,
      name: model.name,
      image: model.imageUrl,
      price: model.price,
      unit: model.unit,
    );
  }

  factory Product.initial() {
    return Product(
        id: '0', name: 'Default', image: '', price: 123, unit: 'Thung');
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '0',
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      price: (map['price'] ?? 0.0).toDouble(),
      unit: map['unit'] ?? '',
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
