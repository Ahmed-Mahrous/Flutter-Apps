

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/shared/components/components.dart';
import 'package:todo_app/shared/components/constants.dart';
import 'package:todo_app/shared/cubit/cubit.dart';
import 'package:todo_app/shared/cubit/states.dart';
class HomeScreen extends StatelessWidget
{
  var titleController = TextEditingController();
  var dateController = TextEditingController();
  var timeController = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold (
          key: scaffoldKey,
          appBar: AppBar(
          backgroundColor: Color(primaryColor),
          title: Text('Todo App'),
          centerTitle: true,
          ),
          bottomNavigationBar:
          BottomNavigationBar(
            backgroundColor: Color(primaryColor),
            selectedItemColor: Color(forGroundColor),
            unselectedItemColor: Colors.white,
            onTap: (index) => cubit.changeIndex(index),
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: 'New Tasks'),
              BottomNavigationBarItem(icon: Icon(Icons.check),
                  label: 'Done Tasks'),
              BottomNavigationBarItem(icon: Icon(Icons.archive),
                  label: 'Archived Tasks'),
                  ],
          ),
          floatingActionButton: cubit.currentIndex == 0? FloatingActionButton(child: Icon(cubit.fbIcon),
            backgroundColor: Color(forGroundColor),
            onPressed: ()
            {
              if(cubit.isBottomSheetShow)
              {
                Navigator.pop(context);
                cubit.isBottomSheetShow = false;

              }
            else {
              scaffoldKey.currentState!.showBottomSheet((context) => Container(
                padding: EdgeInsets.all(20),
                color: Color(primaryColor),
                child: Form(
                  key: formKey,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                                defaultTextField(
                                  validate: (value){
                                    if(value!.isEmpty){
                                      return 'Task title must be full';
                                    }
                                    return null;
                                  },
                                  label: 'Task Title',
                                  prefix: Icons.text_fields,
                                  keyboard_type: TextInputType.text,
                                  controller: titleController,
                                ),

                      SizedBox(height: 20,),
                      defaultTextField(
                          validate: (value){
                            if(value!.isEmpty){
                              return 'Task date must be chosen';
                            }
                            return null;
                      },
                          label: 'Task Date',
                          prefix: Icons.date_range,
                          keyboard_type: TextInputType.datetime,
                          controller: dateController,
                          onTap: (){
                            showDatePicker(builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Color(backGroundColor), // <-- SEE HERE
                                    onPrimary: Colors.white, // <-- SEE HERE
                                    onSurface: Color(primaryColor), // <-- SEE HERE
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      primary: Color(backGroundColor), // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            }
                                ,context: context, initialDate: DateTime.now(), firstDate:DateTime.now() , lastDate: DateTime.parse('2080-12-30')).then((value) {
                              dateController.text = DateFormat.yMMMd().format(value!);
                            });
                          }),
                      SizedBox(height: 20,),
                      defaultTextField(
                          validate: (value){
                            if(value!.isEmpty){
                              return 'Task time must be chosen';
                            }
                            return null;
                          },
                          label: 'Task Time',
                          prefix: Icons.access_time,
                          keyboard_type: TextInputType.datetime,
                          controller: timeController,
                          onTap: (){
                            showTimePicker(builder:(context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: ColorScheme.light(
                                    // change the border color
                                    primary: Color(primaryColor),
                                    // change the text color
                                    onSurface: Color(primaryColor),

                                  ),
                                ),
                                child: child!,
                              );
                            }
                                ,context: context, initialTime: TimeOfDay.now()).then((value) {
                              timeController.text = value!.format(context).toString();
                            });
                          }),
                      SizedBox(height: 20,),
                      defultButton(
                          text: 'ADD TASK',
                          function: (){
                            if(formKey.currentState!.validate())
                            {
                              cubit.insertDatabase(title: titleController.text,
                                  date: dateController.text,
                                  time: timeController.text).then((value){
                                        Navigator.pop(context);
                                        cubit.changeFab(isShow: true, icon: Icons.add);
                              });
                            }
                      })
                    ],
                  ),
                ),
              )).closed.then((value){
                cubit.changeFab(isShow: false, icon: Icons.add);
              });
              cubit.changeFab(isShow: true, icon: Icons.edit);
            }
          },): null,
      body: Container(
          color: Color(backGroundColor),
          child: cubit.screens[cubit.currentIndex]),
        );},
      ),
    );
  }
}

