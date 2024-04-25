
import 'package:first_app/modules/counter_screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(InitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void plus (){
    counter++;
    emit(PlusState());
  }
  void minus (){
    counter--;
    emit(MinusState());
  }

}