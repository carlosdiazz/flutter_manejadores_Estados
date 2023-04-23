import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/services/usuarios_services.dart';
import 'package:provider/provider.dart';

//PROPIO
import 'package:flutter_manejadores_estados/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UsuarioService(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoute.pagesOne,
        routes: AppRoute.getAppRoutes(),
      ),
    );
  }
}
