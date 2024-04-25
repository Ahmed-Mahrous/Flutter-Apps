
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';
class SettingsScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = NewsCubit.get(context);
        return  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text('Dark Mode',style: Theme.of(context).textTheme.bodyText1,),
                  SizedBox(
                    width: 30.0,
                  ),
                  FlutterSwitch(
                    activeColor: Colors.deepOrange,
                    activeTextColor: Colors.white,
                    showOnOff: true,
                    value: cubit.isSwitch,
                    onToggle: (val) {
                      cubit.changeFlutterSwitch(val);
                      cubit.changeThemeMode();
                    },
                  ),
                ],),
            ],
          ),
        );
      },
    );
  }

}