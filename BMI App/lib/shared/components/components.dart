import 'package:flutter/material.dart';

Widget defultButton ({
  required String text,
  required Function function,
  double width = double.infinity,
  double height = 40.0,
  Color background = Colors.blue
}) => Container(
  width: double.infinity,
  child: MaterialButton(
    color: Colors.blue,
    onPressed:
        () { function(); },
    child: Text(text,
      style: TextStyle(
          fontSize: 20,
          color: Colors.white
      ),),
  ),
);

Widget defaultTextField({
  VoidCallback? suffixPressed,
  required Function validate,
  required String label,
  required IconData prefix,
  required TextInputType keyboard_type,
  IconData? suffixIcon,
  bool suffix= false,
  bool isPassword = true,
  required TextEditingController controller,
}) => TextFormField(
controller: controller,
validator:(value) {

  return validate!(value);
},
decoration: InputDecoration(
labelText: label,
border: OutlineInputBorder(),
prefixIcon: Icon(
prefix
),
suffixIcon: suffix? null : IconButton(icon: Icon(suffixIcon), onPressed: suffixPressed,),
),
keyboardType: keyboard_type,
obscureText: isPassword,
);