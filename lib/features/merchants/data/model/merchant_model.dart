class MerchantModel {
  final String? name;
  final bool? hasNotification;
  final String? image;

  MerchantModel({this.name, this.hasNotification, this.image});

  MerchantModel copyWith({
    String? name,
    bool? hasNotification,
    String? image,
  }) => MerchantModel(
    name: name ?? this.name,
    hasNotification: hasNotification ?? this.hasNotification,
    image: image ?? this.image,
  );

  factory MerchantModel.fromJson(Map<String, dynamic> json) => MerchantModel(
    name: json["name"],
    hasNotification: json["hasNotification"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "hasNotification": hasNotification,
    "image": image,
  };
}
