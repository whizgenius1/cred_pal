class ProductModel {
  final String? name;
  final String? currency;
  final int? price;
  final int? prevPrice;
  final String? image;
  final String? topImage;

  ProductModel({
    this.name,
    this.currency,
    this.price,
    this.prevPrice,
    this.image,
    this.topImage,
  });

  ProductModel copyWith({
    String? name,
    String? currency,
    int? price,
    int? prevPrice,
    String? image,
    String? topImage,
  }) => ProductModel(
    name: name ?? this.name,
    currency: currency ?? this.currency,
    price: price ?? this.price,
    prevPrice: prevPrice ?? this.prevPrice,
    image: image ?? this.image,
    topImage: topImage ?? this.topImage,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    name: json["name"],
    currency: json["currency"],
    price: json["price"],
    prevPrice: json["prevPrice"],
    image: json["image"],
    topImage: json["topImage"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "currency": currency,
    "price": price,
    "prevPrice": prevPrice,
    "image": image,
    "topImage": topImage,
  };
}
