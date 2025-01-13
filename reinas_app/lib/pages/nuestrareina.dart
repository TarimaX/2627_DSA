import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class NuestraReina extends StatelessWidget implements NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Mi Página de Cuenta',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
