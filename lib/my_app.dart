import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_54/widget/key_widget.dart';
import 'package:lessons_1/lessons_55/widget/hive_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: Hive_Widget());
  }
}
