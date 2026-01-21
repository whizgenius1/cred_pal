import 'package:cred_pal/features/merchants/data/model/merchant_model.dart';
import 'package:cred_pal/features/merchants/data/source/merchant_local_source.dart';
import 'package:cred_pal/features/merchants/domain/repositories/merchant_repo.dart';
import 'package:cred_pal/shared/app_error.dart';
import 'package:dartz/dartz.dart';

class MerchantRepoImpl implements MerchantRepo {
  final MerchantLocalSource remoteDataSource;

  MerchantRepoImpl({required this.remoteDataSource});

  @override
  Either<AppError, List<MerchantModel>> fetchMerchants() {
    return remoteDataSource.getMerchants();
  }
}
