import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'encrypted_model.g.dart';

class EncryptedModel {
  Future<Box<UserTwo>>? userBox;
  void setup() {
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(UserTwoAdapter());
    }
    userBox = Hive.openBox<UserTwo>('encrypt');
    userBox?.then((value) => value.listenable().addListener(() {
          print(value.length);
        }));
  }

  void doSome() async {
    final box = await userBox;
    await box?.add(UserTwo('Denis', 999));
  }
}

@HiveType(typeId: 0)
class UserTwo extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;

  UserTwo(this.name, this.age);
}
