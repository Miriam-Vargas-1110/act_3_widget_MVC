import 'package:flutter/material.dart';
import 'package:vargasrutas/pagina_inicial.dart';
import 'package:vargasrutas/pagina_dos.dart';
import 'package:vargasrutas/pagina_tres.dart';
import 'package:vargasrutas/AnimatedAlign_p4.dart';
import 'package:vargasrutas/AnimatedList_p5.dart';
import 'package:vargasrutas/Animatedrotation_p6.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Pantalla1(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
      },
    );
  }
}
