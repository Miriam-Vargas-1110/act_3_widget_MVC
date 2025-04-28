import 'package:flutter/material.dart';

class Pantalla6 extends StatefulWidget {
  const Pantalla6({Key? key}) : super(key: key);

  @override
  State<Pantalla6> createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff627df8),
        title: const Center(
          child: Text('Pantalla 6 Vargas'),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(
              size: 100,
            ),
          ),
          ElevatedButton(
            child: const Text('Rotate Logo'),
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
