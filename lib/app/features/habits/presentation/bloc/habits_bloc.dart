import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'habits_event.dart';
part 'habits_state.dart';

class HabitsBloc extends Bloc<HabitsEvent, HabitsState> {
  HabitsBloc() : super(HabitsInitial()) {
    on<HabitsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
