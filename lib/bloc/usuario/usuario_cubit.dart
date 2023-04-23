import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(UsuarioModel user) {
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int newEdad) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(edad: 50);
      emit(UsuarioActivo(newUser));
    }
  }

  void anadirProfesion() {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final olduser = currentState.usuario;
      final newProfesiones = [...olduser.profesiones, "Profesion new"];

      final newUser =
          currentState.usuario.copyWith(profesiones: newProfesiones);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}
