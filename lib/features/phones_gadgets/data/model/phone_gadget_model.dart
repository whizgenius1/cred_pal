


class PhoneGadgetModel {
    final String? name;
    final bool? hasNotification;
    final String? image;

    PhoneGadgetModel({
        this.name,
        this.hasNotification,
        this.image,
    });

    PhoneGadgetModel copyWith({
        String? name,
        bool? hasNotification,
        String? image,
    }) => 
        PhoneGadgetModel(
            name: name ?? this.name,
            hasNotification: hasNotification ?? this.hasNotification,
            image: image ?? this.image,
        );

    factory PhoneGadgetModel.fromJson(Map<String, dynamic> json) => PhoneGadgetModel(
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