import 'package:flutter/material.dart'; // Mengimpor pustaka flutter/material.dart.

void main() {
  runApp(
      const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Constructor untuk MyApp widget.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App', // Judul aplikasi.
      home: Home(), // Menetapkan halaman awal aplikasi.
      theme: ThemeData(
        // Konfigurasi tema aplikasi.
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Warna latar belakang app bar.
        ),
      ),
    );
  }
}

class _HomeState extends State<Home> {
  final List<String> _names = [ // Membuat list nama-nama gambar.
    '1', // Nama gambar 1.
    '2', // Nama gambar 2.
    '3', // Nama gambar 3.
    '4', // Nama gambar 4.
    '5', // Nama gambar 5.
    '6', // Nama gambar 6.
    '3', // Nama gambar 7.
    '2', // Nama gambar 8.
    '1' // Nama gambar 9.
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')), // Judul app bar.
      body: GridView.count(
        crossAxisCount: 3, // Menentukan jumlah grid per baris.
        children: List.generate(
          _names.length,
          (index) {
            return GridTile(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/${_names[index]}.jpg'), // Mengambil gambar sesuai indeks.
                    fit: BoxFit.cover, // Menyesuaikan gambar agar sesuai dengan ukuran kotak.
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  // Widget Home yang menggunakan state.
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() =>
      _HomeState(); // Mengembalikan instance dari _HomeState.
}