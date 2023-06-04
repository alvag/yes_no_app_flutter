import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

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

  Message toMessageEntity() {
    return Message(
      text: answer == 'yes' ? 'Si' : 'No',
      fromWho: FromWho.hers,
      imageUrl: image,
    );
  }
}