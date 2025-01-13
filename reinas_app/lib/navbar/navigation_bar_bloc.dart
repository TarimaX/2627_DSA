import 'package:bloc/bloc.dart';
import '../pages/rules_page.dart';
import '../pages/candidates/candidates_page.dart';
import '../pages/videos_page.dart';

// Eventos de la barra de navegación inferior
enum NavigationBarEvents {
  RulesPageClickedEvent,
  CandidatesPageClickedEvent,
  VideosPageClickedEvent,
}

// Definir la clase abstracta NavigationBarStates
abstract class NavigationBarStates {}

// Bloc para manejar la barra de navegación inferior
class NavigationBarBloc extends Bloc<NavigationBarEvents, NavigationBarStates> {
  NavigationBarBloc() : super(CandidatesPage()) { // Asegúrate que CandidatesPage implementa NavigationBarStates
    on<NavigationBarEvents>((event, emit) {
      switch (event) {
        case NavigationBarEvents.RulesPageClickedEvent:
          emit(RulesPage());
          break;
        case NavigationBarEvents.CandidatesPageClickedEvent:
          emit(CandidatesPage());
          break;
        case NavigationBarEvents.VideosPageClickedEvent:
          emit(VideosPage());
          break;
      }
    });
  }
}
