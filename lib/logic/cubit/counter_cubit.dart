import 'package:bloc/bloc.dart';
import 'package:flutterly_bloc/logic/cubit/counter_states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));

  void increment()=> emit(CounterState(counterValue: state.counterValue+1));
  void decrement()=> emit(CounterState(counterValue: state.counterValue-1));
}