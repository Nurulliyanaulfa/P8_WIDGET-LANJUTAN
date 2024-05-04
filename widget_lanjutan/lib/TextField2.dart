import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (String value) {
                setState(() {}); // Update the UI when text changes
              },
              decoration: const InputDecoration(
                hintText: 'Inputkan nama Anda',
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                ),
                labelText: 'Nama Anda',
                icon: Icon(Icons.person_pin),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Text('Hallo apa kabar ${_controller.text}'),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 10),
            Text(_controller.text), // Display the text below the button
          ],
        ),
      ),
    );
  }
}
