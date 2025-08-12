// ignore: file_names

import 'package:equatable/equatable.dart';

class Retailprice extends Equatable {
  final double price;

  const Retailprice({required this.price});

  factory Retailprice.fromJson(Map<String, dynamic> json) =>
      Retailprice(price: json['amount']);

  Map<String, dynamic> toJson() => {
    'amount' : price
  };
  @override
  // TODO: implement props
  List<Object?> get props {
    return [price];
  }
}
