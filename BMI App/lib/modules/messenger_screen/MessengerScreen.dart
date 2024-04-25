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
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
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
                 ),
                 SizedBox(
                   width: 10.0,
                 ),
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
                                 'https://static.wikia.nocookie.net/thesherlock/images/f/f2/Mrshudsonsherlock.png/revision/latest?cb=20131222204751'
                             ),
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.green,
                             radius: 8.0,
                           ),
                         ],
                       ),
                       Text('Mrs. Hudson',textAlign: TextAlign.center,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,)
                     ],

                   ),
                 ),
                 SizedBox(
                   width: 10.0,
                 ),
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
                                 'https://static.wikia.nocookie.net/legendsofthemultiuniverse/images/d/d4/Jim_Moriarty0.jpg/revision/latest?cb=20121120215741'
                             ),
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.green,
                             radius: 8.0,
                           ),
                         ],
                       ),
                       Text('Jim Moriarty',textAlign: TextAlign.center,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,)
                     ],

                   ),
                 ),
                 SizedBox(
                   width: 10.0,
                 ),
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
                                 'https://ichef.bbci.co.uk/images/ic/1200x675/p01n3lfg.jpg'
                             ),
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.green,
                             radius: 8.0,
                           ),
                         ],
                       ),
                       Text('Molly Hooper',textAlign: TextAlign.center,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,)
                     ],

                   ),
                 ),
                 SizedBox(
                   width: 10.0,
                 ),
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
                                 'https://static.wikia.nocookie.net/villains/images/1/1d/Eurus.jpg/revision/latest?cb=20190207161927'
                             ),
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.green,
                             radius: 8.0,
                           ),
                         ],
                       ),
                       Text('Eurus Holmes',textAlign: TextAlign.center,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,)
                     ],

                   ),
                 ),
                 SizedBox(
                   width: 10.0,
                 ),
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
                       Text('John Watson',textAlign: TextAlign.center,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,)
                     ],

                   ),
                 )
               ],
             ),
           ),
           SizedBox(
             height: 20.0,
           ),
           Expanded(child: SingleChildScrollView(
             child: Column(
               children: [
                 Row(
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://yt3.ggpht.com/ytc/AKedOLTt9Es2om2kMTkP0C-uvMfwIuzhjpJuyZobMQQ8=s900-c-k-c0x00ffffff-no-rj'
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
                           Text('Sherlock Holmes',
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
                                 child: Text('Because you chose her',
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://static.wikia.nocookie.net/thesherlock/images/f/f2/Mrshudsonsherlock.png/revision/latest?cb=20131222204751'
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
                           Text('Mrs. Hudson',
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
                                 child: Text('Oh, the neighbours',
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://static.wikia.nocookie.net/bakerstreet/images/6/66/Mary_Morstan.jpg/revision/latest?cb=20140104024807'
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
                           Text('Mary Morstan',
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
                                 child: Text('why?',
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://ichef.bbci.co.uk/images/ic/1200x675/p01n3lfg.jpg'
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
                           Text('Molly hooper',
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
                                 child: Text('I can\'t say that because i love you',
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://static.wikia.nocookie.net/villains/images/1/1d/Eurus.jpg/revision/latest?cb=20190207161927'
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
                           Text('Eurus Holmes',
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
                                 child: Text('Don\'t you think it\'s clever?',
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://pbs.twimg.com/profile_images/458111902820745216/v_BY23X5_400x400.jpeg'
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
                           Text('Mycroft Holmes',
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
                                 child: Text('Everybody dies. It’s the one thing human beings can be relied upon to do. How can it still come as a surprise to people?',
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
                 ),
                 SizedBox(
                   height: 15.0,
                 ),
                 Row(
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
                                     'https://static.wikia.nocookie.net/legendsofthemultiuniverse/images/d/d4/Jim_Moriarty0.jpg/revision/latest?cb=20121120215741'
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
                           Text('Jim Moriarty',
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
                                 child: Text('It’s not the fall that kills you. Of all people, you should know that, it’s not the fall, it’s never the fall. It’s the landing!',
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
                 ),
               ],
             ),
           ))
         ],
       ),
     ),
   );
  }

}