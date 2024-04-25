

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/SearchScreen/SearchScreen.dart';
import 'package:news_app/SettingsScreen/SettingScreen.dart';
import 'package:news_app/modules/HomeScreen/HomeScreen.dart';
import 'package:news_app/modules/SavedScreen/SavedScreen.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates>{
  int currentIndex = 0;
  NewsCubit() : super(InitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
  ];
  List<Widget> bottomNavScreens = [
      HomeScreen(),
      SearchScreen(),
      SettingsScreen()
  ];
  List<Tab> taps = [
    Tab(text: 'All News',),
    Tab(text: 'Business',),
    Tab(text: 'Sports',),
    Tab(text: 'Science',)
  ];
  void changeBottomNavBar(int value){
    currentIndex = value;
    emit(ChangeBottomNavBarState());
  }
  void changeTaps(int value){
    changeBottomNavBar(0);
    emit(ChangeTapsNavBarState());
  }
  List<dynamic> allNews=[];
  void getAllNews(){
    emit(GetNewsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country':'eg',
      'apiKey':'65f7f556ec76449fa7dc7c0069f040ca'
    }).then((value){
      print(value.data['totalResults']);
      allNews = value.data['articles'];
      print(allNews);
      emit(GetAllNewsSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(GetAllNewsErrorState());
    });
  }

  List<dynamic> business=[];
  void getBusiness(){
    emit(GetNewsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'category':'business',
      'country':'eg',
      'apiKey':'65f7f556ec76449fa7dc7c0069f040ca'
    }).then((value){
      print(value.data['totalResults']);
      business = value.data['articles'];
      print(business);
      emit(GetAllNewsSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(GetAllNewsErrorState());
    });
  }

  List<dynamic> sports=[];
  void getSports(){
    emit(GetNewsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'category':'sports',
      'country':'eg',
      'apiKey':'65f7f556ec76449fa7dc7c0069f040ca'
    }).then((value){
      print(value.data['totalResults']);
      sports = value.data['articles'];
      print(sports);
      emit(GetSportsSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(GetSportsErrorState());
    });
  }

  List<dynamic> science=[];
  void getScience(){
    emit(GetNewsLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'category':'science',
      'country':'eg',
      'apiKey':'a737830ab89148969525c8d33db15fb4'
    }).then((value){
      print(value.data['totalResults']);
      science = value.data['articles'];
      print(science);
      emit(GetScienceSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(GetScienceErrorState());
    });
  }

  bool isSwitch = false;
  void changeFlutterSwitch(value){
    isSwitch = value;
    emit(ChangeFlutterSwitchState());
  }

  bool isDark = false ;
  void changeThemeMode(){
      isDark = !isDark;
      emit(ChangeThemeModeState());
  }
  void sharedThemeMode({required bool isDarkShared}){
      isDark = isDarkShared;
      emit(ChangeThemeModeState());
  }

}
