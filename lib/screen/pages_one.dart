import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Propio
import 'package:flutter_manejadores_estados/bloc/usuario/usuario_cubit.dart';
import 'package:flutter_manejadores_estados/models/usuario_model.dart';
import 'package:flutter_manejadores_estados/router/app_router.dart';

class PagesOne extends StatelessWidget {
  const PagesOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages One"),
        actions: [
          IconButton(
              onPressed: () {
                context.read<UsuarioCubit>().borrarUsuario();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
        centerTitle: true,
      ),
      body: const BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.pagesTwo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(
      builder: (context, state) {
        if (state is UsuarioInitial) {
          return const Center(
            child: Text("No hay user"),
          );
        } else if (state is UsuarioActivo) {
          return InformacionUsuario(
            usuario: state.usuario,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
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
        ...usuario.profesiones
            .map((profesion) => ListTile(title: Text(profesion)))
            .toList(),
      ]),
    );
  }
}
