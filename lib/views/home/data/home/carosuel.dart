class CarouselAd {
  String username;
  String Image_AD;

  CarouselAd({
    required this.Image_AD,
    required this.username,
  });

  factory CarouselAd.fromJson(Map<String, dynamic> json) {
    return CarouselAd(
      username: json['username'],
      Image_AD: json['Image_AD'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'Image_AD': Image_AD,
    };
  }
}
