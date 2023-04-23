import 'package:flutter/material.dart';

class PagesTwo extends StatelessWidget {
  const PagesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages Two"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
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
