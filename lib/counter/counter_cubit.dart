import 'package:basketball/counter/mycounter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrementState());
  int pointATeam = 0;
  int pointBTeam = 0;

  void TeamIncrement(String team, int buttonNumber) {
    if (team == 'A') {
      pointATeam += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      pointBTeam += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
