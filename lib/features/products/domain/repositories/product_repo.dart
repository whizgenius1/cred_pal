import 'package:cred_pal/features/products/data/model/product_model.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepo {
  Either<AppError, List<ProductModel>> fetchProducts();
}
