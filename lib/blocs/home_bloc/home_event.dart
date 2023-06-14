part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class InitHomeTabEvent extends HomeEvent {
  final String title;
  final int val;
  final String pokemon;

  const InitHomeTabEvent(
      {required this.title, required this.val, required this.pokemon});

  @override
  List<Object> get props => [title, val, pokemon];
}
