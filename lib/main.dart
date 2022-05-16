import 'package:app_test_1/bloc/response_bloc.dart';
import 'package:app_test_1/presentation/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(246, 246, 246, 1),
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => ResponseBloc(),
        child: const Home(),
      ),
    );
  }
}
