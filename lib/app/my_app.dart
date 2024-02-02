

import 'package:counter_app/features/presentation/home/manager/counter_cubit/counter_cubit.dart';
import 'package:counter_app/features/presentation/home/views/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> CounterCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterView(),
      ),
    );
  }
}
