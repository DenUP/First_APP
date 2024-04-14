import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lessons_1/lesson_51/example_data.dart';
import 'package:lessons_1/lesson_51/human.dart';

class JsonExample extends StatelessWidget {
  const JsonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: JsonExampleProvider(
        coder: JsonExampleCoder(),
        child: const ButtonWidget(),
      )),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () =>
                  JsonExampleProvider.read(context)?.coder.encode(),
              child: const Text('Кодировать')),
          ElevatedButton(
              onPressed: () =>
                  JsonExampleProvider.read(context)?.coder.decode(),
              child: const Text('Декодировать'))
        ],
      ),
    );
  }
}

class JsonExampleProvider extends InheritedWidget {
  final JsonExampleCoder coder;

  const JsonExampleProvider(
      {super.key, required this.coder, required super.child});

  static JsonExampleProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<JsonExampleProvider>();
  }

  static JsonExampleProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<JsonExampleProvider>()
        ?.widget;
    return widget is JsonExampleProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(covariant JsonExampleProvider oldWidget) {
    return true;
  }
}

class JsonExampleCoder {
  void encode() {
    final objects = humans.map((e) => e.toJson()).toList();
    final jsonString = jsonEncode(objects);
    print(jsonString);
  }

  void decode() {
    try {
      final json = jsonDecode(jsonString) as List<dynamic>;
      final humans = json
          .map((dynamic e) => Human.fromJson(e as Map<String, dynamic>))
          .toList();
      print(humans);
    } catch (error) {
      print(error);
    }
  }
}
