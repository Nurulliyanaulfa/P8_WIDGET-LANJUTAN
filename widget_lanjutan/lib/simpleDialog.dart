import 'package:flutter/material.dart';

// Enum untuk menyimpan pilihan jawaban
enum Answer { YES, NO }

// Kelas state untuk widget Home
class _HomeState extends State<Home> {
  // Variabel untuk menyimpan jawaban dan pesan
  String answer = '';
  String message = '';

  // Method untuk mengatur jawaban
  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = 'Anda memilih: $answer';
    });
  }

  // Method untuk menampilkan dialog konfirmasi
  Future<void> confirm(BuildContext context) async {
    // Widget dialog sederhana
    var simpleDialog = SimpleDialog(
      title: const Text('Konfirmasi'),
      children: <Widget>[
        Column(
          children: <Widget>[
            const Text('Anda ingin keluar dari Aplikiasi?'),
            Container(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  child: const Text(
                    'Ya',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.YES);
                  },
                ),
                Container(
                  width: 5.0,
                ),
                ElevatedButton(
                  child: const Text(
                    'Tidak',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.NO);
                  },
                ),
                Container(
                  width: 5.0,
                ),
              ],
            )
          ],
        )
      ],
    );

    // Menampilkan dialog dan menunggu jawaban
    if (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return simpleDialog;
          },
        ) ==
        Answer.YES) {
      // Jika jawabannya YA
      setAnswer('Ya');
    } else {
      // Jika jawabannya TIDAK
      setAnswer('Tidak');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold sebagai kerangka utama aplikasi
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 15.0,
            ),
            ElevatedButton(
              child: const Text('Show dialog'),
              onPressed: () {
                confirm(context);
              },
            ),
            Container(
              height: 15.0,
            ),
            Text(
              message,
              style: const TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}

// Kelas utama yang memanggil stateful widget _HomeState
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// Fungsi main sebagai titik masuk utama aplikasi Flutter web
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
