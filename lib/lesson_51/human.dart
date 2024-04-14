import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lessons_1/lesson_51/address.dart';

part 'human.g.dart';

// dart run build_runner build --delete-conflicting-outputs -запускГенерацииКода

@JsonSerializable()
class Human {
  @JsonKey(name: 'firestName')
  String name;
  String surname;
  int age;
  List<Address> address;

  Human(
      {required this.name,
      required this.surname,
      required this.age,
      required this.address});

  factory Human.fromJson(Map<String, dynamic> json) => _$HumanFromJson(json);
  Map<String, dynamic> toJson() => _$HumanToJson(this);
}
