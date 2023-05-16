import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String? thumbnail;

  const ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json['smallThumbnail']?.toString(),
        thumbnail: json['thumbnail']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (smallThumbnail != null) 'smallThumbnail': smallThumbnail,
        if (thumbnail != null) 'thumbnail': thumbnail,
      };

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
