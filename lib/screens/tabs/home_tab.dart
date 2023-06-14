import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_bloc_app/blocs/home_bloc/home_bloc.dart";

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<HomeBloc, HomeInitial>(
            builder: (context, state) {
              return Text(
                  "${state.title} --- ${state.val} ---- pokemon: ${state.pokemon}");
            },
          ),
          BlocBuilder<HomeBloc, HomeInitial>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(
                        const InitHomeTabEvent(
                            title: "nuevo titulo", val: 22, pokemon: "pikachu"),
                      );
                },
                child: const Text("pokemon al azar"),
              );
            },
          ),
        ],
      ),
    );
  }
}
