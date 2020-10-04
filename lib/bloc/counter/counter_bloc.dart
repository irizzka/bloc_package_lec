import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_package_lec/res/consts.dart';
import 'package:bloc_package_lec/bloc/counter/counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, int> {

  int _counter = kInitialData;

  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
   switch(event){
     case CounterEvent.incrementEvent :
       _counter++;
       break;
     case CounterEvent.decrementEvent :
       _counter--;
       break;
   }
   yield _counter;
  }


  /// call super to set initial value [kInitialData] from const
  CounterBloc() : super(kInitialData);
}
