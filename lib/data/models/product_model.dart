import 'package:testflutter/domain/entities/product_entity.dart';

class ProductModel {
  String id;
  String name;
  String imageUrl;
  double price;
  String unit;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.unit,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json["id"],
      name: json["name"],
      imageUrl: json["imageUrl"],
      price: json["price"],
      unit: json["unit"]);
}

class ProductResponseModel {
  final List<ProductModel>? products;
  final int? total;

  ProductResponseModel({this.products, this.total});
}

final ProductResponseModel sampleProductList = ProductResponseModel(
    products: sampleProducts, total: sampleProducts.length);

extension ProductModelConverter on ProductModel {
  Product toEntity() {
    return Product(
      id: id,
      name: name,
      price: price,
      image: imageUrl,
      unit: unit,
    );
  }
}

extension ProductResponseModelConverter on ProductResponseModel {
  List<Product> toEntityList() {
    return products?.map((model) => model.toEntity()).toList() ?? [];
  }
}

final List<ProductModel> sampleProducts = [
  ProductModel(
    id: '1',
    name: 'AgriLife 100SL 100 ml',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 100000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '2',
    name: 'AgriLife 100SL 15 ml',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 150000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '3',
    name: 'AgriLife 100SL 150 ml',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 120000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '4',
    name: 'AgriLife 100SL 152 ml',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 80000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '5',
    name: 'AgriLife 100SL 35 ml',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 50000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '6',
    name: 'Ally Max 100SL 1 L',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 100000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '7',
    name: 'Thuốc trừ bệnh',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 150000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '8',
    name: 'Fertilizer 20-20-20',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 120000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '9',
    name: 'Fertilizer 20-20-20',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 80000.0,
    unit: 'THÙNG',
  ),
  ProductModel(
    id: '10',
    name: 'Thiram 100SL 30 ml',
    imageUrl:
        'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
    price: 50000.0,
    unit: 'THÙNG',
  ),
];
