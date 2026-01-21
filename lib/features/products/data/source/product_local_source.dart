import 'package:cred_pal/features/products/data/model/product_model.dart';
import 'package:cred_pal/gen/assets.gen.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

class ProductLocalSource {
  static final _products = [
    {
      "name": "Nokia G20",
      "currency": "₦",
      "price": 39780,
      "prevPrice": 88000,
      "image": Assets.images.nokia.path,
      "topImage": Assets.images.pay40.path,
    },
    {
      "name": "Anker Soundcore..",
      "currency": "₦",
      "price": 39780,
      "prevPrice": 88000,
      "image": Assets.images.speaker.path,
      "topImage": Assets.images.okayfones1.path,
    },
    {
      "name": "iPhone XS Max 4GB..",
      "currency": "₦",
      "price": 295999,
      "prevPrice": 315000,
      "image": Assets.images.iphonexs.path,
      "topImage": Assets.images.ogabassey1.path,
    },
    {
      "name": "iPhone 12 Pro",
      "currency": "₦",
      "price": 490500,
      "prevPrice": 515000,
      "image": Assets.images.iphone12.path,
      "topImage": Assets.images.iMateStores.path,
    },
    {
      "name": "Masterchef Pressure..",
      "currency": "₦",
      "price": 39780,
      "prevPrice": 88000,
      "image": Assets.images.cooker.path,
      "topImage": Assets.images.pay40.path,
    },
    {
      "name": "PS4 Controller",
      "currency": "₦",
      "price": 39780,
      "prevPrice": 88000,
      "image": Assets.images.ps4.path,
      "topImage": Assets.images.pay40.path,
    },
  ];

  Either<AppError, List<ProductModel>> getProducts() {
    try {
      final products = _products.map((e) => ProductModel.fromJson(e)).toList();
      return Right(products);
    } catch (e) {
      return Left(
        AppError(
          message: 'Failed to fetch products',
          exception: e,
          type: AppErrorType.local,
        ),
      );
    }
  }
}
