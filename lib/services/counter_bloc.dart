import 'package:bloc/bloc.dart';
import 'package:task1_iti/services/counter_event.dart';
import 'package:task1_iti/services/counter_state.dart';

class BlocCounter extends Bloc<counterEvent, CounterState> {
  BlocCounter() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(counterEvent event) async* {
    switch (event) {
      case counterEvent.ADD:
{
          int value = ++state.counter;
          value = value % 3;
          print(value);
          yield CounterState(value);
}break;
        case counterEvent.RESET:{
           
           yield CounterState(0);
        }
    }
  }
}
