import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/router/app_router.dart';

class PagesOne extends StatelessWidget {
  const PagesOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages One"),
        centerTitle: true,
      ),
      body: const InformacionUsuario(),
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "General",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Divider(),
        ListTile(
          title: Text("Nombre: "),
        ),
        ListTile(
          title: Text("Edad: "),
        ),
        Text(
          "Profesiones",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Divider(),
        ListTile(
          title: Text("Profesion 1: "),
        ),
        ListTile(
          title: Text("Profesion 2: "),
        )
      ]),
    );
  }
}
