import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Propio

import 'package:flutter_manejadores_estados/models/usuario_model.dart';

class PagesTwo extends StatelessWidget {
  const PagesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Not user"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              final newUser = UsuarioModel(
                  edad: 0, nombre: "Carlos J", profesiones: ["profession 1"]);
            },
            child: const Text(
              "Establecer usuario",
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {},
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
