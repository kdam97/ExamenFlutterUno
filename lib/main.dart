import 'package:examen_uno_flutter/pages/inicio_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inicio",
      debugShowCheckedModeBanner: false,
      home: InicioPage(),
    );
  }
}