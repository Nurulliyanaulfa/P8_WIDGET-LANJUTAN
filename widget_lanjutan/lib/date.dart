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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          
        ),
      ),
    );
  }
}

class _HomeState extends State<Home> {
  DateTime _date = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selected != null && selected != _date) {
      setState(() {
        _date = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text('Tanggal yang Anda pilih: ${_date.toString().split(' ')[0]}'),
              ElevatedButton(
                onPressed: () {
                  selectDate(context);
                },
                child: const Text('Pilih Tanggal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}