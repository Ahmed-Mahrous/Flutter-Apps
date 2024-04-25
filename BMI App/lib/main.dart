
import 'package:bloc/bloc.dart';
import 'package:first_app/modules/bmi_screen/BMIScreen.dart';
import 'package:first_app/modules/counter_screen/CounterScreen.dart';
import 'package:first_app/modules/messenger_screen/Messenger_Screen.dart';
import 'package:first_app/shared/BlocObserver.dart';
import 'package:flutter/material.dart';

import 'layout/Home_Screen.dart';
import 'modules/login/LoginScreen.dart';
import 'modules/user_screen/UsersScreen.dart';

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
      home: BmiScreen(),
    );
  }
}

