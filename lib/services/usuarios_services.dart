import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';

class UsuarioService with ChangeNotifier {
  UsuarioModel? _usuarioModel;

  UsuarioModel? get usuario => _usuarioModel;

  bool get existeUsuario => _usuarioModel != null ? true : false;

  set usuario(UsuarioModel? user) {
    _usuarioModel = user;
    notifyListeners();
  }

  void cambiarEdar(int edad) {
    if (!existeUsuario) return;
    _usuarioModel?.edad = edad;
    notifyListeners();
  }

  void removerUsuario() {
    if (!existeUsuario) return;
    _usuarioModel = null;
    notifyListeners();
  }

  void agregarProfesion() {
    if (!existeUsuario) return;
    _usuarioModel!.profesiones.add("Profesion new");
    notifyListeners();
  }
}
