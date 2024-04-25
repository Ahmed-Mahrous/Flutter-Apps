
import 'package:first_app/modules/counter_screen/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/states.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Counter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          body:
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  CounterCubit.get(context).minus();
                }, child: Text(
                  'Minus',
                )),
                Text(
                  '${CounterCubit.get(context).counter}',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                TextButton(onPressed: (){
                  CounterCubit.get(context).plus();
                }, child: Text(
                  'Plus',
                )),

              ],
            ),
          ),
        );
      },
          listener: (context,state){

      }),
    );
  }
}
