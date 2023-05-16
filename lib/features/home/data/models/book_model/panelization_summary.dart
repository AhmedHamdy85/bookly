import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles:
          json['containsEpubBubbles']?.toString().contains("true"),
      containsImageBubbles:
          json['containsImageBubbles']?.toString().contains("true"),
    );
  }

  Map<String, dynamic> toJson() => {
        if (containsEpubBubbles != null)
          'containsEpubBubbles': containsEpubBubbles,
        if (containsImageBubbles != null)
          'containsImageBubbles': containsImageBubbles,
      };

  @override
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}
