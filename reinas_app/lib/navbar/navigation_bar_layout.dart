import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'navigation_bar_item.dart';

class NavigationBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF33AA26),
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          NavigationBarItem(
            icon: Icons.rule,
            label: "Reglas",
            onTap: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvents.ReglasClickedEvent);
            },
          ),
          NavigationBarItem(
            icon: Icons.campaign,
            label: "Candidatas",
            onTap: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvents.CandidatesPageClickedEvent);
            },
          ),
          NavigationBarItem(
            icon: Icons.video_library,
            label: "Videos",
            onTap: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvents.VideosPageClickedEvent);
            },
          ),
        ],
      ),
    );
  }
}
