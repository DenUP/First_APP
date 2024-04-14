import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

// dart run build_runner build --delete-conflicting-outputs -запускГенерацииКода

@JsonSerializable()
class Address {
  final String city;
  final String street;
  final String house;
  final int float;

  Address(
      {required this.city,
      required this.street,
      required this.house,
      required this.float});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
