import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/blocs/bottom_navigation_bloc/bottom_navigation_bloc.dart';

import 'package:flutter_bloc_app/screens/tabs/home_tab.dart';
import 'package:flutter_bloc_app/screens/tabs/menu_tab.dart';
import 'package:flutter_bloc_app/widgets/custom_bottom_navigation_bar.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<BottomNavigationBloc, int>(
          builder: (context, currentTab) {
            return currentTab == 0 ? const HomeTab() : const MenuTab();
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
