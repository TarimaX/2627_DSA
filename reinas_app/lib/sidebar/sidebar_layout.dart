import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import '../navbar/navigation_bar_layout.dart'; // Importar la barra de navegación inferior
import '../sidebar/sidebar.dart'; // Importar el sidebar

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                return Scaffold(
                  body: navigationState as Widget, // Muestra la página seleccionada
                  bottomNavigationBar: NavigationBarLayout(), // Barra de navegación inferior
                );
              },
            ),
            SideBar(), // Sidebar encima de la página principal
          ],
        ),
      ),
    );
  }
}
