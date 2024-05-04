import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Kelas MyApp adalah stateless widget yang merupakan root dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi
      home: Home(), // Beranda aplikasi
      theme: ThemeData(
        // Tema aplikasi
        appBarTheme: AppBarTheme(
          // Tema AppBar
          color: Colors.blue, // Warna biru untuk AppBar
          // Di sini Anda dapat menambahkan konfigurasi untuk tema AppBar
        ),
      ),
    );
  }
}

// Kelas Home adalah stateless widget yang menampilkan tombol untuk menampilkan dialog
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // Method untuk membangun dialog alert
  void buildAlertDialog(BuildContext context) {
    // Membuat AlertDialog
    var alertDialog = AlertDialog(
      title: const Text('Informasi'), // Judul AlertDialog
      content: const Text('Flutter sangat luar biasa'), // Konten AlertDialog
      actions: <Widget>[
        // Tombol 'Ok'
        ElevatedButton(
          child: const Text(
            'Ok',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            // Warna biru untuk tombol
            
          ),
          onPressed: () {
            // Ketika tombol 'Ok' ditekan, dialog ditutup
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    // Menampilkan dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // AppBar dengan judul
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Dialog'), // Tombol untuk menampilkan dialog
          style: ElevatedButton.styleFrom(
            // Warna biru untuk tombol
          
          ),
          onPressed: () {
            buildAlertDialog(context); // Memanggil method untuk menampilkan dialog
          },
        ),
      ),
    );
  }
}
