import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/blocs/bottom_navigation_bloc/bottom_navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBloc = context.read<BottomNavigationBloc>();

    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTab) {
        return BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (index) {
            bottomNavigationBloc.add(TabChangeEvent(index));
          },
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu")
          ],
        );
      },
    );
  }
}
