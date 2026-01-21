import 'package:cred_pal/features/phones_gadgets/data/model/phone_gadget_model.dart';
import 'package:cred_pal/gen/assets.gen.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

class PhoneGadgetLocalSource {
  static final _phones = [
    {
      "name": "Okay fones",
      "hasNotification": false,
      "image": Assets.images.justphones.path,
    },
    {
      "name": "Slot",
      "hasNotification": false,
      "image": Assets.images.slot.path,
    },
    {
      "name": "Orile Restaurant",
      "hasNotification": false,
      "image": Assets.images.orile.path,
    },
    {
      "name": "Pointek",
      "hasNotification": false,
      "image": Assets.images.pointtek.path,
    },
  ];
  Either<AppError, List<PhoneGadgetModel>> getPhones() {
    try {
      final phones = _phones.map((e) => PhoneGadgetModel.fromJson(e)).toList();
      return Right(phones);
    } catch (e) {
      return Left(
        AppError(
          message: 'Failed to fetch phones',
          exception: e,
          type: AppErrorType.local,
        ),
      );
    }
  }
}
