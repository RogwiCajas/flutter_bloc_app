import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/blocs/bottom_navigation_bloc/bottom_navigation_bloc.dart';
import 'package:flutter_bloc_app/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationBloc(),
      child: const Homeview(),
    );
  }
}
