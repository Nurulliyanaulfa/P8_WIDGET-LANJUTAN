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
  int _selected = -1;
  String _jenisKelamin = '-';

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
            const Text('Jenis Kelamin :'),
            Row(
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Laki-laki';
                    });
                  },
                ),
                const Text('Laki-laki'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Perempuan';
                    });
                  },
                ),
                const Text('Perempuan'),
              ],
            ),
            Text('Anda memilih : $_jenisKelamin'),
          ],
        ),
      ),
    );
  }
}
