import 'package:equatable/equatable.dart';

class RetailPrice extends Equatable {
  final num? amount;
  final String? currencyCode;

  const RetailPrice({this.amount, this.currencyCode});

  factory RetailPrice.fromJson(Map<String, dynamic> json) => RetailPrice(
        amount: num.tryParse(json['amount'].toString()),
        currencyCode: json['currencyCode']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (amount != null) 'amount': amount,
        if (currencyCode != null) 'currencyCode': currencyCode,
      };

  @override
  List<Object?> get props => [amount, currencyCode];
}
