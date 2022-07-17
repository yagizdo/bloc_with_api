import 'package:bloc_api/core/network_client.dart';
import 'package:bloc_api/models/post.dart';
import 'package:dio/dio.dart';

class PostClient extends NetworkClient {

  // Get data from API
  Future<List<Post>> getPosts() async {

    // Posts List
    List<Post> posts = [];

    // Get data
    Response response = await dio.get('$baseUrl/posts');

    // Parsed list
    var parsedList = response.data;

    // Parsed list to mapped and add to posts list (posts)
    posts = parsedList.map<Post>((e) => Post.fromJson(e)).toList();

    // Return posts list
    return posts;
  }
}