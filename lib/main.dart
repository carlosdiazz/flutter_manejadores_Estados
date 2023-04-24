import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Propio
import 'package:flutter_manejadores_estados/router/app_router.dart';
import 'package:flutter_manejadores_estados/bloc/usuario/user_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(),
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
