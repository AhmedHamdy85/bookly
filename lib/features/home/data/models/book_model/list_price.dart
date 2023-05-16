import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final num? amount;
  final String? currencyCode;

  const ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) => ListPrice(
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
