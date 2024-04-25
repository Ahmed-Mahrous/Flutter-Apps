import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/modules/archived_tasks/ArchivedTasks.dart';
import 'package:todo_app/modules/done_tasks/DoneTasks.dart';
import 'package:todo_app/modules/new_tasks/NewTasks.dart';
import 'package:todo_app/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(InitialState());
  bool isBottomSheetShow = false;
  IconData fbIcon = Icons.add;
  Database? database;
  int currentIndex = 0;
  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archivedTasks = [];
  List<Widget> screens = [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  
  static AppCubit get(context) => BlocProvider.of(context);
  void changeIndex(int index){
    currentIndex = index;
    emit(ChangeBottomNavBar());
  }
  void changeFab({
  required bool isShow,required IconData icon
}){
      fbIcon = icon;
      isBottomSheetShow = isShow;
      emit(ShowBottomSheetState());


  }
  void createDatabase ()
  {
        openDatabase('todoApp.db', version: 1,
        onCreate: (Database db, int version) async {
          print('database created');
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE Tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT , status TEXT)').then((value){
            print ('table created');
          });
        },
        onOpen: (database) async {
          getDataFromDatabase(database);
          print('database opened');
        }
    ).then((value){
      database = value;
      emit(CreateDatabaseState());
        });


  }
  insertDatabase ({required String title , required String date , required String time}) async {
      await database!.transaction((txn) async {
      txn.rawInsert('INSERT INTO Tasks(title, date, time) VALUES("$title","$date","$time")').then((value){
        print('$value is inserted');
      }).catchError((error){print('Error: $error');});
      return null;
    }).then((value){
      emit(InsertDatabaseState());
      getDataFromDatabase(database);
      });

  }

   void getDataFromDatabase (database) {
     newTasks =[];
     doneTasks =[];
     archivedTasks =[];
     database!.rawQuery('SELECT * FROM Tasks').then((value){
        value.forEach((element){
          if(element['status']=='done')
            doneTasks.add(element);
          else if(element['status']=='archived')
            archivedTasks.add(element);
          else newTasks.add(element);
        });
        emit(GetDatabaseState());
     });
  }

  void updateDatabase ({required String status, required int id}) async {
      // Update some record
      return await database!.rawUpdate(
          'UPDATE Tasks SET status = ?  WHERE id = ?',
          ['$status', id ]).then((value){
            getDataFromDatabase(database);
            emit(UpdateDatabaseState());
      });
    }

  void deleteDatabase ({required int id}) async {
    // Update some record
    return await database!.rawDelete(
        'DELETE FROM Tasks WHERE id = ?', [id]).then((value){
      getDataFromDatabase(database);
      emit(DeleteDatabaseState());
    });
  }
}