import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  final String mensaje;

  const page1(this.mensaje, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 241, 216),
      appBar: AppBar(
        title: const Text('Titulo'),
      ),
      body: Center(
        child: Text(mensaje),
      ),
    );
  }
}
