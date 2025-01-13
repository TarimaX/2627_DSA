import 'package:flutter/material.dart';
import '../navbar/navigation_bar_bloc.dart';

class RulesPage extends StatelessWidget implements NavigationBarStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Reglas', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}