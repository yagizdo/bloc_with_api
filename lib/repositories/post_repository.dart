import 'package:bloc_api/core/post_client.dart';
import 'package:bloc_api/models/post.dart';
import 'package:bloc_api/repositories/post_repository_interface.dart';

class PostRepository implements IPostRepository {
  @override
  Future<List<Post>> getAllPosts() async {

    // Posts
    List<Post> posts = [];

    // Post Client
    PostClient _client = PostClient();

    // Get posts
    posts = await _client.getPosts();

    // return posts
    return posts;

  }

}