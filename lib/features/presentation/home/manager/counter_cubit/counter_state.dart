part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterDecrease extends CounterState {}

class CounterIncrease extends CounterState {}

