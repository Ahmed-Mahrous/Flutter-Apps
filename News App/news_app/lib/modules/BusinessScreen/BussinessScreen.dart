import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = NewsCubit.get(context);
        return ConditionalBuilder(condition: state is! GetNewsLoadingState,
            builder: (context)=> ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index)=> buildNewsItem(cubit.business[index],context),
                separatorBuilder: (context,index)=> SizedBox(),
                itemCount: cubit.business.length),
            fallback: (context)=> Center(child: CircularProgressIndicator()));
      },

    );
  }
}
