import 'package:flutter/material.dart';
import '../navbar/navigation_bar_bloc.dart';
import '/bloc.navigation_bloc/navigation_bloc.dart'; // Importa NavigationStates
class VideosPage extends StatelessWidget implements NavigationStates, NavigationBarStates { // Implementa ambas interfaces
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Aquí están los videos', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}