import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';


Widget buildNewsItem(article,context){
  return BlocConsumer<NewsCubit,NewsStates>(
    listener: (context,state){},
    builder: (context,state){
      var cubit = NewsCubit.get(context);
      return Directionality(
        textDirection: TextDirection.rtl,
        child:   Padding(

          padding: const EdgeInsets.all(8.0),

          child: Container(

            decoration: BoxDecoration( color: cubit.isDark? Colors.grey[850]: Colors.grey[200],borderRadius: BorderRadius.circular(7)),

            width: double.infinity,

            height: 130.0,

            padding: EdgeInsetsDirectional.only(start: 10.0,top: 10.0,bottom: 10.0,end: 10.0),

            child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                Container(

                  width: 150.0,

                  height: 110.0,

                  decoration: BoxDecoration(

                    image: DecorationImage(image: NetworkImage('${article['urlToImage']}'),fit : BoxFit.cover),



                  ),

                ),

                SizedBox(

                  width: 10.0,

                ),

                // Container(

                //   color: Colors.deepOrange,

                //   width: 2.0,

                //   height: 80,

                // ),

                Expanded(

                  child: Container(

                    height: 110.0,

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Expanded(

                          child: Text('${article['title']}',

                            style: Theme.of(context).textTheme.bodyText1,maxLines: 4,overflow: TextOverflow.ellipsis,),

                        ),

                        Text('${article['publishedAt']}',style: TextStyle(color: Colors.deepOrange,fontSize: 12.0),)

                      ],

                    ),

                  ),

                )



              ],

            ),

          ),

        ),
      );
    },
  );
}