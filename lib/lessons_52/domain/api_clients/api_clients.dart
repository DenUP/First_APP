import 'dart:convert';
import 'dart:io';

import 'package:lessons_1/lessons_52/domain/entity/post.dart';

class ApiClient {
  final client = HttpClient();

  Future<List<Post>> getPost() async {
    final json = await get('https://jsonplaceholder.typicode.com/posts');
    final posts = json
        .map((dynamic e) => Post.fromJson(e as Map<String, dynamic>))
        .toList();
    return posts;
  }

  Future<Post?> post({required String title, required String body}) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final parametr = <String, dynamic>{
      'title': title,
      'body': body,
      'userId': 865
    };
    final request = await client.postUrl(url);
    request.headers.set('Content-type', 'application/json; charset=UTF-8');
    request.write(jsonEncode(parametr));
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    final post = Post.fromJson(json);
    return post;
  }

  Future<List<dynamic>> get(String urli) async {
    final url = Uri.parse(urli);
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();

    final json = jsonDecode(jsonString) as List<dynamic>;
    return json;
  }
}
