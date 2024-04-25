import 'package:flutter/material.dart';
import 'package:todo_app/shared/components/constants.dart';
import 'package:todo_app/shared/cubit/cubit.dart';

Widget defultButton ({
  required String text,
  required Function function,
  double width = double.infinity,
  double height = 35.0,
  Color background = Colors.blue
}) => Container(
  height: height,
  width: double.infinity,
  child: Material(
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0) ),
    clipBehavior: Clip.antiAlias, // Add This
    child: MaterialButton(
      height: height,
      color: Color(forGroundColor),
      onPressed:
          () { function(); },
      child: Text(text,
        style: TextStyle(
            fontSize: 15.0,
            color: Colors.white
        ),),
    ),
  ),
);

Widget defaultTextField({
  VoidCallback? suffixPressed,
  Function? validate,
  Function? onTap,
  required String label,
  required IconData prefix,
  required TextInputType keyboard_type,
  IconData? suffixIcon,
  bool suffix= false,
  bool isPassword = false,
  bool isClickable = true,
  required TextEditingController controller,
}) => TextFormField(
  style: TextStyle(color: Colors.white),
controller: controller,
validator:(value) {

  return validate!(value);
},
  onTap: () {

   onTap!();
  },
  enabled: isClickable,
decoration: InputDecoration(
  labelStyle: TextStyle(
    color: Colors.white
  ),
labelText: label,
enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.white,
    width: 1.0,
  ),
),
focusedBorder:OutlineInputBorder(
  borderSide: BorderSide(
    color: Color(forGroundColor),
    width: 1.0,
  ),
) ,
prefixIcon: Icon(
prefix,color: Colors.white,
),
suffixIcon: suffix? null : IconButton(icon: Icon(suffixIcon), onPressed: suffixPressed,),
),
keyboardType: keyboard_type,
obscureText: isPassword,
);

Widget BuildNewTaskItem(Map tasks,context){
  return Dismissible(
    key: Key(tasks['id'].toString()),
    onDismissed: (direction){
      AppCubit.get(context).deleteDatabase(id: tasks['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color(taskColor),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 38.0,
              backgroundColor: Color(forGroundColor),
              child: Text(
                '${tasks['time']}',
                style: TextStyle(fontSize: 15.9,
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 15.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${tasks['title']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text('${tasks['date']}',
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 18.0,
                    ),)

                ],
              ),
            ),
            IconButton(onPressed: (){
              AppCubit.get(context).updateDatabase(status: 'done', id: tasks['id']);
            }, icon: Icon(Icons.check_box_rounded), color: Color(forGroundColor)),
            IconButton(onPressed: (){
              AppCubit.get(context).updateDatabase(status: 'archived', id: tasks['id']);
            }, icon: Icon(Icons.archive,color: Color(forGroundColor))),

          ],
        ),
      ),
    ),
  );
}
Widget BuildDoneTaskItem(Map tasks,context){
  return Dismissible(
    key: Key(tasks['id'].toString()),
    onDismissed: (direction){
      AppCubit.get(context).deleteDatabase(id: tasks['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color(taskColor),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 38.0,
              backgroundColor: Color(forGroundColor),
              child: Text(
                '${tasks['time']}',
                style: TextStyle(fontSize: 15.9,
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 15.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${tasks['title']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text('${tasks['date']}',
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 18.0,
                    ),)

                ],
              ),
            ),

          ],
        ),
      ),
    ),
  );
}
Widget BuildArchivedTaskItem(Map tasks,context){
  return Dismissible(
    key: Key(tasks['id'].toString()),
    onDismissed: (direction){
      AppCubit.get(context).deleteDatabase(id: tasks['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color(taskColor),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 38.0,
              backgroundColor: Color(forGroundColor),
              child: Text(
                '${tasks['time']}',
                style: TextStyle(fontSize: 15.9,
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 15.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${tasks['title']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text('${tasks['date']}',
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 18.0,
                    ),)

                ],
              ),
            ),
            IconButton(onPressed: (){
              AppCubit.get(context).updateDatabase(status: 'done', id: tasks['id']);
            }, icon: Icon(Icons.check_box_rounded,
            color: Color(forGroundColor))),

          ],
        ),
      ),
    ),
  );
}