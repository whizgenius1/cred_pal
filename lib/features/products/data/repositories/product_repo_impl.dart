import 'package:cred_pal/features/products/data/model/product_model.dart';
import 'package:cred_pal/features/products/data/source/product_local_source.dart';
import 'package:cred_pal/features/products/domain/repositories/product_repo.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductLocalSource remoteDataSource;

  ProductRepoImpl({required this.remoteDataSource});

  @override
  Either<AppError, List<ProductModel>> fetchProducts() {
    return remoteDataSource.getProducts();
  }
}
