import 'package:flutter/material.dart';

class Pantalla3 extends StatefulWidget {
  const Pantalla3({Key? key}) : super(key: key);

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff627df8), // Fondo morado
        title: const Center(
          // Centra el texto
          child: Text(
            'Pantalla 3 Vargas',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _counter += 1;
                });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Color(0xff6e55c6),
                child: Center(
                  child: Text(
                    _counter.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}
