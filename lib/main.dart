import 'package:flutter/material.dart';
import 'package:app3/pages/componets/btn.dart';
import 'package:app3/pages/page1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hijo al padre',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final TextEditingController _textoController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Escribe y mandaremos tu mensaje',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _textoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingresa un mensaje",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              child: MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => page1(_textoController.text),
                    ),
                  );
                },
                text: 'Enviar',
              ),
            )
          ],
        ),
      ),
    );
  }
}
