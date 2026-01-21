import 'package:cred_pal/features/merchants/data/model/merchant_model.dart';

class MerchantEntities {
  final List<MerchantModel> merchants;
  final List<MerchantModel> serchedMerchants;

  MerchantEntities({required this.merchants, required this.serchedMerchants});

  MerchantEntities copyWith({
    List<MerchantModel>? merchants,
    List<MerchantModel>? serchedMerchants,
  }) {
    return MerchantEntities(
      merchants: merchants ?? this.merchants,
      serchedMerchants: serchedMerchants ?? this.serchedMerchants,
    );
  }

  factory MerchantEntities.initial() {
    return MerchantEntities(merchants: [], serchedMerchants: []);
  }

  @override
  String toString() =>
      'MerchantEntities(merchants: $merchants, serchedMerchants: $serchedMerchants)';
}
