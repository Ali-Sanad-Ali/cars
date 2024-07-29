import 'user_model.dart';

class BodyImages {
  String name;
  String imageUrl;
  String description;
  UserModel? userModel;
  BodyImages(
      {required this.name,
      required this.imageUrl,
      required this.description,
      required this.userModel});
}
