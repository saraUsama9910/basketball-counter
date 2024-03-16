import 'package:basketball/counter/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int pointATeam = 0;
  int pointBTeam = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      pointATeam += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      pointBTeam += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
