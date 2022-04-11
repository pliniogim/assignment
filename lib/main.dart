import 'package:flutter/material.dart';

main() {
  runApp(const Assignment());
}

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  String _text = 'Este é o texto inicial';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Assignment")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(_text),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              autofocus: true,
              onPressed: () {
                setState(() {
                  _text = 'Texto foi alterado';
                });
              },
              child: const Text('Alterar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
