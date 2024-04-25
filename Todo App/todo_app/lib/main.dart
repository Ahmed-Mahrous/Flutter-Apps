import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/layout/Home_Screen.dart';
import 'package:todo_app/shared/BlocObserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  // Use cubits...
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
