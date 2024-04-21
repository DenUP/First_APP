import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lessons_1/lessons_55/model/hive_model.dart';
import 'package:lessons_1/lessons_56/model/encrypted_model.dart';
import 'package:lessons_1/my_app.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // чтобы добавить канал для вызова асинхронной функции снизу
  Hive.registerAdapter(UserRAdapter());
  Hive.registerAdapter(PetAdapter());

  await Hive.initFlutter();
  return runApp(const App());
}
