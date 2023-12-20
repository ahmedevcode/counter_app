import 'package:counter/countercubit/counter_cubit.dart';
import 'package:counter/countercubit/counter_cubit.dart';
import 'package:counter/countercubit/counter_cubit.dart';
import 'package:counter/countercubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../countercubit/counter_cubit.dart';
import '../countercubit/counter_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=counter_cubit.get(context);
    return BlocProvider(create:(BuildContext context)=>counter_cubit(),

      child:BlocConsumer(listener: (context,states){}, builder: (BuildContext context, state) {
        return Scaffold(
        body: Center(
        child: Row(
        //crossAxisAlignment: CrossAxisAlignment.,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        ElevatedButton  (
        onPressed: () {
        cubit.increment();
        },
        child: Text('+'),
        ),
        SizedBox(
        width: 10,
        ),
        Text('${cubit..number}'),
        SizedBox(
        width: 10,
        ),
        ElevatedButton  (
        onPressed: () {
        cubit.decrement();
        // Code to be executed when the button is pressed
        // print('Button pressed!');
        },

    child: Text('-'),

    ),
    ],
    ),
    ),
    appBar: AppBar(title: Text('counter app',style: TextStyle(color: Colors.cyan),),),


    );
      },));





  }
}
