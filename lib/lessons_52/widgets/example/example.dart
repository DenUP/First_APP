import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_52/domain/api_clients/api_clients.dart';

class ExampleApi extends StatelessWidget {
  const ExampleApi({super.key});

  @override
  Widget build(BuildContext context) {
    ApiClient().getPost();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [Text('dsas')],
      )),
    );
  }
}
