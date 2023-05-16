import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'offer.dart';
import 'retail_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country']?.toString(),
        saleability: json['saleability']?.toString(),
        isEbook: json['isEbook']?.toString().contains("true"),
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(Map<String, dynamic>.from(json['listPrice'])),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(
                Map<String, dynamic>.from(json['retailPrice'])),
        buyLink: json['buyLink']?.toString(),
        offers: (json['offers'] as List<dynamic>?)
            ?.map((e) => Offer.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        if (country != null) 'country': country,
        if (saleability != null) 'saleability': saleability,
        if (isEbook != null) 'isEbook': isEbook,
        if (listPrice != null) 'listPrice': listPrice?.toJson(),
        if (retailPrice != null) 'retailPrice': retailPrice?.toJson(),
        if (buyLink != null) 'buyLink': buyLink,
        if (offers != null) 'offers': offers?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      country,
      saleability,
      isEbook,
      listPrice,
      retailPrice,
      buyLink,
      offers,
    ];
  }
}
