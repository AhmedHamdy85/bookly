import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  final bool? text;
  final bool? image;

  const ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
        text: json['text']?.toString().contains("true"),
        image: json['image']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (text != null) 'text': text,
        if (image != null) 'image': image,
      };

  @override
  List<Object?> get props => [text, image];
}
