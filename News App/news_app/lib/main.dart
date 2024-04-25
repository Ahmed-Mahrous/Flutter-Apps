import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/Home_Layout.dart';
import 'package:news_app/shared/BlocObserver.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  CacheHelper.init();
  //bool isDark = CacheHelper.getBoolean(key: 'isDark');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  //final bool isDark;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> NewsCubit()..getAllNews()..getBusiness()..getScience()..getSports(),
      child: BlocConsumer<NewsCubit,NewsStates>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = NewsCubit.get(context);
         return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.deepOrange,

                bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 0.0,selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.black54,
                    showUnselectedLabels: true,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.white),
                scaffoldBackgroundColor: Colors.white,
                tabBarTheme: TabBarTheme(labelColor: Colors.deepOrange,
                  unselectedLabelColor: Colors.black54,
                  indicator:UnderlineTabIndicator(borderSide: BorderSide(color: Colors.deepOrange,width: 2.0)),),
                appBarTheme: AppBarTheme(backgroundColor: Colors.white,
                  elevation: 0.0,
                ),
                textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))

            ),
            darkTheme: ThemeData(
                primarySwatch: Colors.deepOrange,

                bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 0.0,selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.white,
                    showUnselectedLabels: true,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.grey[900]),
                scaffoldBackgroundColor: Colors.grey[900],
                tabBarTheme: TabBarTheme(labelColor: Colors.deepOrange,
                  unselectedLabelColor: Colors.white,
                  indicator:UnderlineTabIndicator(borderSide: BorderSide(color: Colors.deepOrange,width: 2.0)),),
                appBarTheme: AppBarTheme(backgroundColor: Colors.grey[900],
                  elevation: 0.0,
                ),
                textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))
            ),
            themeMode: cubit.isDark? ThemeMode.dark :ThemeMode.light,
            home: HomeLayoutScreen(),
          );
        },
      ),
    );
  }
}
