import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lessons_1/my_app.dart';

void main() async {
  await Hive.initFlutter();
  return runApp(const App());
  
}
