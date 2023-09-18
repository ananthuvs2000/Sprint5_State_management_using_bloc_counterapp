import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countercubit_state.dart';

class CountercubitCubit extends Cubit<CountercubitState> {
  CountercubitCubit() : super(CountercubitState(counterValue: 0,isIncremented: false,themeChanger: false));
  void increment()=>emit(CountercubitState(counterValue:state.counterValue+1, isIncremented: true,themeChanger: true));
  void decrement()=>emit(CountercubitState(counterValue: state.counterValue-1, isIncremented: false,themeChanger: false));

}
