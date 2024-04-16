import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_52/domain/api_clients/api_clients.dart';
import 'package:lessons_1/lessons_52/domain/entity/post.dart';

class ExampleWidgetModel extends ChangeNotifier {
  final apiClient = ApiClient();
  var _posts = <Post>[];
  List<Post> get post => _posts;

  Future<void> reloadPosts() async {
    final post = await apiClient.getPost();
    _posts += post;
    notifyListeners();
  }

  Future<void> createPost() async {
    final post = await apiClient.post(
      title: 'fgdsfgds',
      body: 'Привет!',
    );
  }
}

class ExampleModelProvider extends InheritedNotifier {
  final ExampleWidgetModel model;
  const ExampleModelProvider(
      {super.key, required this.model, required Widget child})
      : super(notifier: model, child: child);

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
