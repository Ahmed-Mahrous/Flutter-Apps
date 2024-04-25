import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:
        Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://images.theconversation.com/files/103266/original/image-20151126-11973-19t4uys.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',style: TextStyle(
                color: Colors.black
            ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.camera_alt,size: 16.0,color: Colors.white))),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.edit,size: 16.0,color: Colors.white))),
        ],
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(
                        Icons.search
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Search')
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  height: 100.0,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>storyItem(), separatorBuilder: (context,index)=>SizedBox(width: 20.0,), itemCount: 15 )),
              SizedBox(
                height: 40.0,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>chatItem(), separatorBuilder: (context,index)=>SizedBox(height: 20.0,), itemCount: 15 )
            ],
          ),
        ),
      ),
    );
  }
Widget storyItem(){
   return Container(
     width: 60.0,
     child: Column(
       children: [
         Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             CircleAvatar(
               radius: 30.0,
               backgroundImage: NetworkImage(
                   'https://yt3.ggpht.com/ytc/AKedOLTt9Es2om2kMTkP0C-uvMfwIuzhjpJuyZobMQQ8=s900-c-k-c0x00ffffff-no-rj'
               ),
             ),
             CircleAvatar(
               backgroundColor: Colors.green,
               radius: 8.0,
             ),
           ],
         ),
         Text('Sherlock Holmes',textAlign: TextAlign.center,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,)
       ],

     ),
   );
}
  Widget chatItem(){
    return Row(
      children: [
        Container(
          width: 60.0,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://m.media-amazon.com/images/M/MV5BMTAwODg1OTQ1NzReQTJeQWpwZ15BbWU4MDEyMDUyOTAy._V1_.jpg'
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 8.0,
                  ),
                ],
              ),
            ],

          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Watson',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,),
              SizedBox(
                height: 7.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text('But she wasn\'t supposed to be like that. Why is she like that?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 2.0,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('02:00 pm')
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}