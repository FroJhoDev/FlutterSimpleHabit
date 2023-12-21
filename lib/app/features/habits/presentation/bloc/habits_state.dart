part of 'habits_bloc.dart';

abstract class HabitsState extends Equatable {
  const HabitsState();  

  @override
  List<Object> get props => [];
}
class HabitsInitial extends HabitsState {}
