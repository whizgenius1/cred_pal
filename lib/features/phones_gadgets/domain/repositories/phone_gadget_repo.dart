import 'package:cred_pal/features/phones_gadgets/data/model/phone_gadget_model.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class PhoneGadgetRepo {
  Either<AppError, List<PhoneGadgetModel>> fetchPhones();
}
