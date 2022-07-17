part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}

class GetPostState extends PostState {
  final List<Post> posts;

  GetPostState(this.posts);
}
