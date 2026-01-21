import 'package:cred_pal/features/merchants/data/model/merchant_model.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class MerchantRepo {
  Either<AppError, List<MerchantModel>> fetchMerchants();
}
