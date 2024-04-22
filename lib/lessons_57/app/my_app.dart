import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_57/widgets/groups/groups_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/groups',
      routes: {
        '/groups': (context) => GroupsWidget(),
      },
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}
