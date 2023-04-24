import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';
import 'package:flutter_manejadores_estados/router/app_router.dart';
import 'package:flutter_manejadores_estados/services/usuarios_services.dart';

class PagesOne extends StatelessWidget {
  const PagesOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages One"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream,
        //initialData: initialData,
        builder: (BuildContext context, AsyncSnapshot<UsuarioModel> snapshot) {
          return snapshot.hasData
              ? InformacionUsuario(
                  usuarioModel: usuarioService.usuarioModel!,
                )
              : const Center(
                  child: Text("No hya Informacion del usuario"),
                );
        },
      ),
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
    required this.usuarioModel,
  });

  final UsuarioModel usuarioModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "General",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Divider(),
        ListTile(
          title: Text(usuarioModel.nombre),
        ),
        ListTile(
          title: Text("${usuarioModel.edad}"),
        ),
        const Text(
          "Profesiones",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Divider(),
        //...usuario.profesiones
        //    .map((profesion) => ListTile(title: Text(profesion)))
        //    .toList(),
      ]),
    );
  }
}
