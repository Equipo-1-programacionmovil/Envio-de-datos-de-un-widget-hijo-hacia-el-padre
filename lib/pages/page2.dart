import 'package:flutter/material.dart';
import 'page1.dart';

class Page2 extends StatelessWidget {
  final TextEditingController _textoController =
      TextEditingController(text: "Mensaje inicial");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Escribe un mensaje para',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _textoController,
              decoration: const InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Ingresa un mensaje",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => page1(_textoController.text),
                  ),
                );
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
