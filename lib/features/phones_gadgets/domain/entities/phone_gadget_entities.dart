import 'package:cred_pal/features/phones_gadgets/data/model/phone_gadget_model.dart';

class PhoneGadgetEntities {
  final List<PhoneGadgetModel> phones;
  final List<PhoneGadgetModel> serchedPhones;

  PhoneGadgetEntities({required this.phones, required this.serchedPhones});

  PhoneGadgetEntities copyWith({
    List<PhoneGadgetModel>? phones,
    List<PhoneGadgetModel>? serchedPhones,
  }) {
    return PhoneGadgetEntities(
      phones: phones ?? this.phones,
      serchedPhones: serchedPhones ?? this.serchedPhones,
    );
  }

  factory PhoneGadgetEntities.initial() {
    return PhoneGadgetEntities(phones: [], serchedPhones: []);
  }

  @override
  String toString() =>
      'PhoneGadgetEntities(phones: $phones, serchedPhones: $serchedPhones)';
}
