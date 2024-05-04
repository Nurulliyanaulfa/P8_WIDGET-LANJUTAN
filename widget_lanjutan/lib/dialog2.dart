import 'package:flutter/material.dart';

// Enum untuk opsi jawaban
enum Answer { YES, NO }

// Kelas _HomeState adalah stateful widget yang mengelola state untuk kelas Home
class _HomeState extends State<Home> {
  String answer = ''; // Variabel untuk menyimpan jawaban
  String message = ''; // Variabel untuk menyimpan pesan

  // Method untuk mengatur jawaban
  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = 'Anda memilih: $answer';
    });
  }

  // Method untuk menampilkan dialog konfirmasi
  Future<void> confirm(BuildContext context) async {
    var simpleDialog = SimpleDialog(
      title: const Text('Konfirmasi'),
      children: <Widget>[
        Column(
          children: <Widget>[
            const Text('Anda ingin keluar dari Aplikiasi?'),
            Container(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  child: const Text(
                    'Ya',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.YES);
                  },
                ),
                Container(width: 5.0),
                ElevatedButton(
                  child: const Text(
                    'Tidak',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, Answer.NO);
                  },
                ),
                Container(width: 5.0),
              ],
            )
          ],
        ),
      ],
    );

    // Menampilkan dialog dan menangani jawaban
    if (await showDialog(
            context: context,
            builder: (BuildContext context) {
              return simpleDialog;
            }) ==
        Answer.YES) {
      setAnswer('Ya');
    } else {
      setAnswer('Tidak');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // AppBar dengan judul
      body: Center(
        child: Column(
          children: <Widget>[
            Container(height: 15.0),
            ElevatedButton(
              child: const Text('Show dialog'), // Tombol untuk menampilkan dialog
              onPressed: () {
                confirm(context); // Memanggil method untuk menampilkan dialog konfirmasi
              },
            ),
            Container(height: 15.0),
            Text(
              message, // Menampilkan pesan
              style: const TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}

// Kelas Home adalah stateless widget yang menampilkan tombol untuk menampilkan dialog
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState(); // Mengembalikan stateful widget _HomeState
}
