class UserModel {
  String username;
  String imageUrl;

  UserModel({
    required this.username,
    required this.imageUrl,
  });

  // Named constructor to create an instance from a JSON map
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      imageUrl: json['imageUrl'],
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'imageUrl': imageUrl,
    };
  }
}
