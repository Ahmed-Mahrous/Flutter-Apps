import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/shared/components/components.dart';
import 'package:todo_app/shared/components/constants.dart';
import 'package:todo_app/shared/cubit/cubit.dart';
import 'package:todo_app/shared/cubit/states.dart';

class ArchivedTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var tasks = AppCubit.get(context).archivedTasks;
        return tasks.length == 0? Container() : ListView.separated(itemBuilder: (context, index)=>BuildArchivedTaskItem(tasks[index],context),
              separatorBuilder: (context,index)=> SizedBox(), itemCount: tasks.length);
      },
    );
  }
}
