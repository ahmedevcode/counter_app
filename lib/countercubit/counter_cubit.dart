
import 'package:counter/countercubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class counter_cubit extends Cubit<counterstate>{
  counter_cubit(): super(counterinitalstate());
  int number=1;
  void increment (){
    number++;
    emit(counterincrement());

  }
  void decrement (){
    number--;
    emit(counterdecrement());

  }

}
