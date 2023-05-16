import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type']?.toString(),
      identifier: json['identifier']?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        if (type != null) 'type': type,
        if (identifier != null) 'identifier': identifier,
      };

  @override
  List<Object?> get props => [type, identifier];
}
