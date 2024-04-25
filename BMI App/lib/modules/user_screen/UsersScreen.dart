
import 'package:first_app/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id:1,
    name: 'Ahmed Mahrous',
    phone: '0111673487123'),
    UserModel(id:2,
        name: 'Mostafa Amin',
        phone: '0111263917123'),
    UserModel(id:3,
        name: 'Abdo Mosa',
        phone: '0111125893123'),
    UserModel(id:4,
        name: 'Menna Shazly',
        phone: '0111372910123'),
    UserModel(id:5,
        name: 'Kawther Ahmed',
        phone: '0111271940123'),
    UserModel(id:6,
        name: 'Manar Shahin',
        phone: '0111226183923'),
    UserModel(id:1,
        name: 'Ahmed Mahrous',
        phone: '0111673487123'),
    UserModel(id:2,
        name: 'Mostafa Amin',
        phone: '0111263917123'),
    UserModel(id:3,
        name: 'Abdo Mosa',
        phone: '0111125893123'),
    UserModel(id:4,
        name: 'Menna Shazly',
        phone: '0111372910123'),
    UserModel(id:5,
        name: 'Kawther Ahmed',
        phone: '0111271940123'),
    UserModel(id:6,
        name: 'Manar Shahin',
        phone: '0111226183923'),
    UserModel(id:1,
        name: 'Ahmed Mahrous',
        phone: '0111673487123'),
    UserModel(id:2,
        name: 'Mostafa Amin',
        phone: '0111263917123'),
    UserModel(id:3,
        name: 'Abdo Mosa',
        phone: '0111125893123'),
    UserModel(id:4,
        name: 'Menna Shazly',
        phone: '0111372910123'),
    UserModel(id:5,
        name: 'Kawther Ahmed',
        phone: '0111271940123'),
    UserModel(id:6,
        name: 'Manar Shahin',
        phone: '0111226183923'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'Users',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
      ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]), separatorBuilder: (context,index)=>Container(
        height: 1.0,
        width: double.infinity,
        color: Colors.grey[300],
      ), itemCount: users.length)
        ,
    );
  }

 Widget buildUserItem(UserModel user)=>Padding(
   padding: const EdgeInsets.all(15.0),
   child: Row(
     children: [
       CircleAvatar(
         radius: 25.0,
         backgroundColor: Colors.blue,
         child: Text(
           '${user.id}',
           style: TextStyle(
               fontWeight: FontWeight.bold,
               color: Colors.white
           ),
         ),
       ),
       SizedBox(
         width: 15,
       ),
       Column(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             '${user.name}',
             style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0
             ),
           ),
           Text(
             '${user.phone}',
             style: TextStyle(
                 color: Colors.grey[600],
                 fontSize: 15.0
             ),
           ),
         ],
       )
     ],
   ),
 );
}