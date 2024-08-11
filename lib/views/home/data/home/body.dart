class BodyImages {
  String name;
  String imageUrl;
  String description;
  num? contactNumber;

  BodyImages({
    required this.name,
    required this.imageUrl,
    required this.description,
    this.contactNumber,
  });

  factory BodyImages.fromJson(Map<String, dynamic> json) {
    return BodyImages(
      name: json['name'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      contactNumber: json['contactNumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'contactNumber': contactNumber,
    };
  }
}
