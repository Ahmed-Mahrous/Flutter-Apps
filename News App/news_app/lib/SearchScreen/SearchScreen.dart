import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';

class SearchScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Screen',style: Theme.of(context).textTheme.bodyText1,));
  }
}