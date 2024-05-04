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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: Container(
        child: const Text(
          'RPL Polbeng',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
        width: 250,
        height: 100,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
