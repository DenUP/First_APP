import 'package:flutter/material.dart';
import 'package:lessons_1/widgets/lesson22.dart';
import 'package:lessons_1/widgets/user_profile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: AllUserProfile());
  }
}
