import 'package:cred_pal/features/products/data/model/product_model.dart';

class ProductEntities {
  final List<ProductModel> products;
  final List<ProductModel> serchedProducts;

  ProductEntities({required this.products, required this.serchedProducts});

  ProductEntities copyWith({
    List<ProductModel>? products,
    List<ProductModel>? serchedProducts,
  }) {
    return ProductEntities(
      products: products ?? this.products,
      serchedProducts: serchedProducts ?? this.serchedProducts,
    );
  }

  factory ProductEntities.initial() {
    return ProductEntities(products: [], serchedProducts: []);
  }

  @override
  String toString() =>
      'ProductEntities(products: $products, serchedProducts: $serchedProducts)';
}
