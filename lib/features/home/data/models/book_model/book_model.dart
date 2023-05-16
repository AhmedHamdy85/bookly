import 'package:equatable/equatable.dart';

import 'item.dart';

class BookModel extends Equatable {
  final String? kind;
  final num? totalItems;
  final List<Item>? items;

  const BookModel({this.kind, this.totalItems, this.items});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind']?.toString(),
        totalItems: num.tryParse(json['totalItems'].toString()),
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        if (kind != null) 'kind': kind,
        if (totalItems != null) 'totalItems': totalItems,
        if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [kind, totalItems, items];
}
