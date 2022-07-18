import 'package:bloc_api/models/post.dart';

abstract class IPostRepository {
  Future<List<Post>> getAllPosts();
}