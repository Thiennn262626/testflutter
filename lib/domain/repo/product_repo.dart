import 'package:testflutter/data/models/product_model.dart';
import 'package:testflutter/domain/entities/product_entity.dart';

class ProductRepoIml {
  Future<List<Product>> getProductList() async {
    try {
      final rs = sampleProductList;
      print('20110263 list: ${rs.total}');
      return rs.toEntityList();
    } catch (e) {
      return Future.error(e);
    }
  }
}
