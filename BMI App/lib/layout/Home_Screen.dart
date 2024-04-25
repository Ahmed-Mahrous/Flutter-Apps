import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
      leading: IconButton(icon: Icon( Icons.menu),onPressed: (){},) ,
      title: Text('My First App'),
      actions: [
        IconButton(icon:Icon(Icons.notification_important) ,onPressed: (){},

        ),
        IconButton(icon: Icon(Icons.search),onPressed: (){},
        )
      ],
     centerTitle: true,
     
    ),
    body:
        Container(
          width: double.infinity,
          child: Column(
            children: [
             Container(
               width: 200.0,
               height: 200.0,
               clipBehavior: Clip.antiAliasWithSaveLayer ,
               margin: EdgeInsets.symmetric(vertical: 20.0 ),
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0)
               ),
               child: Stack(
                 alignment: AlignmentDirectional.bottomCenter,
                 children: [
                   Image(image: NetworkImage(
                     'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg/1126px-Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg'
                   ),
                       width: 200.0,
                       height: 200.0,
                       fit: BoxFit.cover,
                   ),
                   Container(
                     color: Colors.black.withOpacity(0.7),
                     width: 200.0,
                     padding: EdgeInsets.symmetric(
                         vertical: 10.0

                     ),
                     child: Text(
                       'flower',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.white
                       ),
                     ),
                   )
                 ],
               ),
             ),

            ],
          ),
        )

        );
  }

}
