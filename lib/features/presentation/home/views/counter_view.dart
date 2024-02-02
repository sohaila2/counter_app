import 'package:counter_app/features/presentation/home/manager/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = CounterCubit.get(context);
    return Scaffold(
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  cubit.increase();
                }, child: Text('Add', style: TextStyle(
                    fontSize: 35
                ),)),
                Text('${cubit.counter}', style: TextStyle(fontSize: 50, color: Colors.red)),
                TextButton(onPressed: (){
                  cubit.decrease();
                }, child:
                Text('minus', style: TextStyle(
                    fontSize: 35
                ),)),
              ],
            ),
          );
        },
      ),
    );
  }
}
