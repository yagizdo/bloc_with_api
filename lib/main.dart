import 'package:bloc_api/bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => PostBloc(),
    child: MyApp(),
  ));
}
