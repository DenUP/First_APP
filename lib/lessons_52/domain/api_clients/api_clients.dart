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
