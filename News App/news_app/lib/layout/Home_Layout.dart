
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';

class HomeLayoutScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = NewsCubit.get(context);
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(leading: Image(
              image: AssetImage('assets/images/news.png'),
              width: 100.0,),
              bottom: TabBar(onTap: (value){
                cubit.changeTaps(value);
              },tabs: cubit.taps

              ),
              title: Text('News App',style: cubit.isDark? null:TextStyle(color: Colors.black54),),
              ),
            bottomNavigationBar: BottomNavigationBar(currentIndex: cubit.currentIndex ,onTap: (value){
              cubit.changeBottomNavBar(value);
            },
              items: cubit.bottomNavItems,),
            body: cubit.bottomNavScreens[cubit.currentIndex]),
        );
      },
    );
  }
}

