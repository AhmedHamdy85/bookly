import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class Offer extends Equatable {
  final num? finskyOfferType;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;

  const Offer({this.finskyOfferType, this.listPrice, this.retailPrice});

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: num.tryParse(json['finskyOfferType'].toString()),
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(Map<String, dynamic>.from(json['listPrice'])),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(
                Map<String, dynamic>.from(json['retailPrice'])),
      );

  Map<String, dynamic> toJson() => {
        if (finskyOfferType != null) 'finskyOfferType': finskyOfferType,
        if (listPrice != null) 'listPrice': listPrice?.toJson(),
        if (retailPrice != null) 'retailPrice': retailPrice?.toJson(),
      };

  @override
  List<Object?> get props => [finskyOfferType, listPrice, retailPrice];
}
