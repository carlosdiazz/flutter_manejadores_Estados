import 'dart:async';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';

class _UsuariosService {
  UsuarioModel? _usuarioModel;

  UsuarioModel? get usuarioModel => _usuarioModel;

  StreamController<UsuarioModel> _usuariosStreamController =
      StreamController<UsuarioModel>.broadcast();
  //COloque broadcast para que emita el valor a todos los que lo escuchan

  Stream<UsuarioModel> get usuarioStream => _usuariosStreamController.stream;

  bool get existeUsuario => (_usuarioModel != null) ? true : false;

  void cargarUsuario(UsuarioModel user) {
    _usuarioModel = user;
    _usuariosStreamController.add(user);
  }

  void cambiarEdad(int edad) {
    if (!existeUsuario) return;
    _usuarioModel!.edad = edad;
    _usuariosStreamController.add(_usuarioModel!);
  }

  dispose() {
    _usuariosStreamController.close();
  }
}

final usuarioService = _UsuariosService();
