import 'package:flutter/material.dart';

// Kelas Home adalah StatelessWidget yang menampilkan tata letak berwarna-warni
class Home extends StatelessWidget {
  // Konstruktor untuk kelas Home dengan parameter judul
  const Home({Key? key, required this.title}) : super(key: key);

  // Judul halaman
  final String title;

  @override
  Widget build(BuildContext context) {
    // Scaffold adalah struktur dasar halaman yang mengikuti Material Design
    return Scaffold(
      // AppBar adalah bilah aplikasi yang menampilkan judul di bagian atas
      appBar: AppBar(
        title: Text(title),
      ),
      // Body dari halaman
      body: Center(
        // Widget Center digunakan untuk menempatkan widget di tengah layar
        child: Column(
          // Column digunakan untuk menempatkan widget secara vertikal
          children: <Widget>[
            // Expanded digunakan untuk memberi ruang yang sama kepada semua widget yang ada di dalamnya
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.indigo,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
