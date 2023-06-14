import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_app/repository/repository1.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeInitial> {
  HomeBloc()
      : super(const HomeInitial(title: "HOME", val: 22, pokemon: "ninguno")) {
    on<InitHomeTabEvent>((event, emit) async {
      //llamar al repository y consultar
      Repository1 repository = Repository1();
      String pokemon = await repository.getPoke(event.pokemon);
      emit(HomeInitial(title: event.title, val: event.val, pokemon: pokemon));
    });
  }
}
