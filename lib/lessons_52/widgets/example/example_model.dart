import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_52/domain/entity/post.dart';

class ExampleWidgetModel extends ChangeNotifier {
  final _posts = <Post>[];
  List<Post> get post => _posts;
}

class ExampleWidgetProvider extends InheritedNotifier {
  final ExampleWidgetModel model;
  const ExampleWidgetProvider(
      {super.key, required this.model, required Widget child})
      : super(child: child);

  static ExampleWidgetProvider? wath(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ExampleWidgetProvider>();
  }

  static ExampleWidgetProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ExampleWidgetProvider>()
        ?.widget;
    return widget is ExampleWidgetProvider ? widget : null;
  }
}
