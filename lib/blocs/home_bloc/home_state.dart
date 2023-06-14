part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  final String title;
  final int val;
  final String pokemon;

  const HomeInitial({
    required this.title,
    required this.val,
    required this.pokemon,
  });

  @override
  List<Object> get props => [title, val, pokemon];
}
