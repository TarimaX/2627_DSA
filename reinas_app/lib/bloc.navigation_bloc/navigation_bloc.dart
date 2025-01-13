import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../pages/homepage.dart';
import '../pages/nuestrareina.dart';
import '../pages/reglas.dart';
import '../pages/votations.dart';
import '../pages/candidates/candidates_page.dart'; // Página de candidatas
import '../pages/videos_page.dart'; // Página de videos

// Definir los eventos de navegación
enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  ReglasClickedEvent,
  VotationsClickedEvent,
  CandidatesPageClickedEvent, // Desde la navbar
  VideosPageClickedEvent, // Desde la navbar
}

// Definir la clase abstracta NavigationStates
abstract class NavigationStates {}

// Bloc de navegación
class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(HomePage()) {
    // Registrar eventos
    on<NavigationEvents>((event, emit) {
      switch (event) {
        case NavigationEvents.HomePageClickedEvent:
          emit(HomePage());
          break;
        case NavigationEvents.MyAccountClickedEvent:
          emit(NuestraReina());
          break;
        case NavigationEvents.ReglasClickedEvent:
          emit(Reglas());
          break;
        case NavigationEvents.VotationsClickedEvent:
          emit(Votations());
          break;
        case NavigationEvents.CandidatesPageClickedEvent: // Evento desde la navbar
          emit(CandidatesPage());
          break;
        case NavigationEvents.VideosPageClickedEvent: // Evento desde la navbar
          emit(VideosPage());
          break;
      }
    });
  }
}
