import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//PROPIO
import 'package:flutter_manejadores_estados/models/usuario_model.dart';
import 'package:flutter_manejadores_estados/router/app_router.dart';
import 'package:flutter_manejadores_estados/services/usuarios_services.dart';

class PagesOne extends StatelessWidget {
  const PagesOne({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages One"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                usuarioService.removerUsuario();
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: usuarioService.existeUsuario
          ? InformacionUsuario(
              usuario: usuarioService.usuario!,
            )
          : const Center(child: Text("No existe el usuario")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.pagesTwo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    super.key,
    required this.usuario,
  });

  final UsuarioModel usuario;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "General",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(
            title: Text(usuario.nombre),
          ),
          ListTile(
            title: Text("${usuario.edad}"),
          ),
          const Text(
            "Profesiones",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...usuario.profesiones.map((e) => ListTile(title: Text(e))).toList(),
        ]),
      ),
    );
  }
}
