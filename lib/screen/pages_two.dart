import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';
import 'package:flutter_manejadores_estados/services/usuarios_services.dart';
import 'package:provider/provider.dart';

class PagesTwo extends StatelessWidget {
  const PagesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(
      context,
    );

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text(usuarioService.usuario!.nombre)
            : const Text("No User"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              final newUser = UsuarioModel(
                  edad: 0,
                  nombre: "Carlos Jose",
                  profesiones: [
                    "Profesion 1",
                    "Profesion 2",
                    "Profesion 3",
                    "Profesion 4"
                  ]);
              usuarioService.usuario = newUser;
            },
            child: const Text(
              "Establecer usuario",
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              usuarioService.cambiarEdar(10);
            },
            color: Colors.blue,
            child: const Text(
              "Cambiar Edad",
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              usuarioService.agregarProfesion();
            },
            color: Colors.blue,
            child: const Text(
              "Establecer Profesion",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
