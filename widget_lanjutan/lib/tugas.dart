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
      home: Home(title: 'Percobaan Menggunakan Widget'),
      theme: ThemeData(
        fontFamily: 'JosefinSans', // Mengatur font utama aplikasi
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'images/polbeng_logo.png', // Ganti dengan path gambar Anda
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Visi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur Politeknik Negeri Bengkalis melalui surat keputusan No. 2061/PL31/TU/2016 adalah:',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    '"Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak berstandar Nasional dan menuju reputasi Internasional pada tahun 2020".',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Misi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMissionItem(
                          '1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa dalam menerapkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak bidang Rekayasa web dan Aplikasi mobile untuk meningkatkan daya saing yang tinggi.'),
                      _buildMissionItem(
                          '2. Menciptakan, mengembangkan dan menerapkan ilmu pengetahuan dan teknologi untuk menghasilkan produk unggulan rekayasa perangkat lunak.'),
                      _buildMissionItem(
                          '3. Meningkatkan pemanfaatan teknologi informasi dalam mengatasi permasalahanpermasalahan di lingkungan internal maupun lingkungan eksternal (industri, pemerintah dan masyarakat umum).'),
                      _buildMissionItem(
                          '4. Melaksanakan dan mengembangkan desain dan jejaring kerjasama bidang rekayasa perangkat lunak yang berkelanjutan dengan institusi dalam dan luar negeri.'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildMissionItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }
}