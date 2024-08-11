class Categories {
  String categoryName;

  Categories({required this.categoryName});

  // Named constructor to create an instance from a JSON map
  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      categoryName: json['categoryName'],
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'categoryName': categoryName,
    };
  }
}
