class YesNoModel {
  String answer;
  String image;
  bool forced;

  YesNoModel({
    required this.answer,
    required this.image,
    required this.forced,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) {
    return YesNoModel(
      answer: json['answer'],
      image: json['image'],
      forced: json['forced'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'answer': answer,
      'image': image,
      'forced': forced,
    };
  }
}