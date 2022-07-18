import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_api/core/network_client.dart';
import 'package:bloc_api/core/post_client.dart';
import 'package:bloc_api/repositories/post_repository.dart';
import 'package:meta/meta.dart';

import '../models/post.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) {});

    on<GetPostEvent>((event,emit) async {
      PostRepository _repository = PostRepository();

      List<Post> posts = await _repository.getAllPosts();

      emit(GetPostState(posts));
    });
  }
}
