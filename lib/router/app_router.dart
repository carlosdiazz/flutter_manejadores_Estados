import 'package:flutter/material.dart';
import 'package:flutter_manejadores_estados/screen/screen.dart';

class AppRoute {
  static const pagesOne = 'pagesOne';
  static const pagesTwo = 'pagesTwo';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutess = {
      pagesOne: (_) => const PagesOne(),
      pagesTwo: (_) => const PagesTwo()
    };
    return appRoutess;
  }
}
