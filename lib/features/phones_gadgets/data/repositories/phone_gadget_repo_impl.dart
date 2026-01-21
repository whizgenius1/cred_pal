import 'package:cred_pal/features/phones_gadgets/data/model/phone_gadget_model.dart';
import 'package:cred_pal/features/phones_gadgets/data/source/phone_gadget_local_source.dart';
import 'package:cred_pal/features/phones_gadgets/domain/repositories/phone_gadget_repo.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

class PhoneGadgetRepoImpl implements PhoneGadgetRepo {
  final PhoneGadgetLocalSource remoteDataSource;

  PhoneGadgetRepoImpl({required this.remoteDataSource});

  @override
  Either<AppError, List<PhoneGadgetModel>> fetchPhones() {
    return remoteDataSource.getPhones();
  }
}
