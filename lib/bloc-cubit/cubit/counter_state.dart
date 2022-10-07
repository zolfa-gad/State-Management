part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class IncrementCountState extends CounterState {}

class DecrementCountState extends CounterState {}




