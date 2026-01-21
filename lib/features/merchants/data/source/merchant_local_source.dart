import 'package:cred_pal/features/merchants/data/model/merchant_model.dart';
import 'package:cred_pal/gen/assets.gen.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

class MerchantLocalSource {
  static final _merchant = [
    {
      "name": "Justrite",
      "hasNotification": true,
      "image": Assets.images.justrite.path,
    },
    {
      "name": "Orile Restaurant",
      "hasNotification": true,
      "image": Assets.images.orile.path,
    },
    {"name": "Slot", "hasNotification": true, "image": Assets.images.slot.path},
    {
      "name": "Pointek",
      "hasNotification": true,
      "image": Assets.images.pointtek.path,
    },
    {
      "name": "ogabassey",
      "hasNotification": true,
      "image": Assets.images.ogabassey.path,
    },
    {
      "name": "Casper Stores",
      "hasNotification": false,
      "image": Assets.images.casper.path,
    },
    {
      "name": "Dreamworks",
      "hasNotification": false,
      "image": Assets.images.dreamworks.path,
    },
    {
      "name": "Hubmart",
      "hasNotification": true,
      "image": Assets.images.hubmart.path,
    },
    {
      "name": "Just Used",
      "hasNotification": true,
      "image": Assets.images.justused.path,
    },
    {
      "name": "Just fones",
      "hasNotification": true,
      "image": Assets.images.justphones.path,
    },
  ];

  Either<AppError, List<MerchantModel>> getMerchants() {
    try {
      final merchants = _merchant
          .map((e) => MerchantModel.fromJson(e))
          .toList();
      return Right(merchants);
    } catch (e) {
      return Left(
        AppError(
          message: 'Failed to fetch merchants',
          exception: e,
          type: AppErrorType.local,
        ),
      );
    }
  }
}
