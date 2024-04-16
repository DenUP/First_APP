import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_52/domain/entity/post.dart';

class ExampleWidgetModel extends ChangeNotifier {
  final _posts = <Post>[];
  List<Post> get post => _posts;

  void reloadPosts() {}

  void createPost() {}
}

class ExampleModelProvider extends InheritedNotifier {
  final ExampleWidgetModel model;
  const ExampleModelProvider(
      {super.key, required this.model, required Widget child})
      : super(child: child);

  static ExampleModelProvider? wath(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ExampleModelProvider>();
  }

  static ExampleModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ExampleModelProvider>()
        ?.widget;
    return widget is ExampleModelProvider ? widget : null;
  }
}
