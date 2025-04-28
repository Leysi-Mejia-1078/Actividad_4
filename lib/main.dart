import 'package:flutter/material.dart';
import 'package:act_4/inicio.dart';
import 'package:act_4/login.dart';
import 'package:act_4/register.dart';
import 'package:act_4/productos.dart';

void main() => runApp(Prototipo());

class Prototipo extends StatelessWidget {
  const Prototipo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototipo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Inicio(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const Login(),
        '/pantalla3': (context) => const Registro(),
        '/pantalla4': (context) => const Productos(),
      },
    );
  }
}
