import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_48/InheritedModel.dart';
import 'package:lessons_1/lessons_48/inherited_pass.dart';
import 'package:lessons_1/start_lesson/widgets/Onboarding1.dart';
import 'package:lessons_1/start_lesson/widgets/profile.dart';
import 'package:lessons_1/start_lesson/widgets/lesson22.dart';
import 'package:lessons_1/start_lesson/widgets/lesson23.dart';
import 'package:lessons_1/start_lesson/widgets/lessons29.dart';
import 'package:lessons_1/start_lesson/widgets/user_profile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: ExampleModel());
  }
}
