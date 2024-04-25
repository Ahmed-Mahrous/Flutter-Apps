

import 'package:first_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  bool isPassword = true;
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(icon: Icon( Icons.menu),onPressed: (){},) ,
       title: Text('Flutter App'),
       actions: [
         IconButton(icon:Icon(Icons.notification_important) ,onPressed: (){},

         ),
         IconButton(icon: Icon(Icons.search),onPressed: (){},
         )
       ],
       centerTitle: true,

     ),
     body:
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: Form(
         key: formKey,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
             'Login',
             style: TextStyle(
               color: Colors.blue,
               fontSize: 40,
               fontWeight: FontWeight.bold
             ),
             textAlign: TextAlign.center,
             ) ,
             SizedBox(
               height: 20.0,
             ),
             TextFormField(
              validator: (value){
              if(value!.isEmpty){
                  return'Email Address must not be empty';
                 }
                return null;
               },
               controller: emailController,
               decoration: InputDecoration(
                 labelText: 'Email Address',
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(
                   Icons.email
                 )
                 ),
               keyboardType: TextInputType.emailAddress,
               onChanged:(value){
                 print (value);
               } ,
               onFieldSubmitted: (value){
                 print(value);
               },
               ),
             SizedBox(
               height: 15.0,
             ),
             defaultTextField(controller: passwordController,
             label: 'Password',
             keyboard_type: TextInputType.visiblePassword,
             prefix: Icons.lock,
             isPassword: isPassword,
             suffixPressed: (){
               setState(() {
                 isPassword = !isPassword;
               });

             },
                 suffixIcon: isPassword? Icons.visibility:Icons.visibility_off,
             validate: (String value){
               if(value.isEmpty)
                 {
                   return 'password must not be empty';
                 }
               return null;
             }
             ),
             SizedBox(
               height: 15.0,
             ),
             defultButton(function: (){
              if(formKey.currentState!.validate()){
                }
               print(emailController.text);
               print(passwordController.text);
               },

             text: 'LOGIN',),
             SizedBox(
               height: 15.0,
             ),
             Row(
               children: [
                 Text('Don\'t have an account?'),
                 TextButton(onPressed: (){}, child: Text('Register Now'))
               ],
             )
           ],
         ),
       ),
     ),
   );
  }
}