import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';
import 'package:flutter_manejadores_estados/services/usuarios_services.dart';

class PagesTwo extends StatelessWidget {
  const PagesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioService.usuarioStream,
          //initialData: initialData,
          builder:
              (BuildContext context, AsyncSnapshot<UsuarioModel> snapshot) {
            return snapshot.hasData
                ? Text("Nombre: ${snapshot.data!.nombre}")
                : Text("");
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              final newUsuario = UsuarioModel(
                  edad: 0, nombre: "Carlos", profesiones: ["Vago"]);
              usuarioService.cargarUsuario(newUsuario);
            },
            child: const Text(
              "Establecer usuario",
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              usuarioService.cambiarEdad(40);
            },
            color: Colors.blue,
            child: const Text(
              "Cambiar Edad",
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {},
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
