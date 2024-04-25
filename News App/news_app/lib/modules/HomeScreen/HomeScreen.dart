import 'package:flutter/material.dart';
import 'package:news_app/modules/AllNewsScreen/AllNewsScreen.dart';
import 'package:news_app/modules/BusinessScreen/BussinessScreen.dart';
import 'package:news_app/modules/ScienceScreen/ScienceScreen.dart';
import 'package:news_app/modules/SportScreen/SportScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        AllNewsScreen(),
        BusinessScreen(),
        SportsScreen(),
        ScienceScreen(),

      ],
    );
  }
}