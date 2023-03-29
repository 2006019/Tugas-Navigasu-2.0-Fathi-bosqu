import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsListScreen(),
    );
  }
}

class NewsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Terbaru'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final newsId = (index + 1).toString();
          return ListTile(
            title: Text('Berita $newsId'),
            subtitle: Text('Deskripsi Berita $newsId'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailScreen(
                    newsId: newsId,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({Key? key, required this.newsId}) : super(key: key);
  final String newsId;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Berita'),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(
              "https://picsum.photos/seed/picsum/400/200",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  'berita ka ${widget.newsId}. Video viral Ketua DPR RI, Puan Maharani berbadan tikus yang bertuliskan "kami tidak butuh dewan perampok rakyat" kritik keras buatan Badan Eksekutif Mahasiswa Universitas Indonesia (BEM UI), masih menjadi perbincangan hangat.Diawali dengan memperlihatkan gedung DPR yang terbelah, kemudian video viral ini memperlihatkan kemunculan foto 3 ekor tikus. Namun salah satu daru 3 tikus tersebut, memiliki kepala yang mengunakan kepala Ketua DPR RI, Puan Maharani. Dalam caption unggahan tersebut, BEM UI juga menuliskan kritik keras yang mengatakan bahwa masyarakat membutuhkan sosok wakil rakyat atau DPR yang memang benar-benar menjadi perwakilan rakyat, bukan sebagai perampok rakyatnya sendiri. "Bagaikan tikus dengan watak licik yang selalu menggerogoti masyarakat sipil, semakin terlihat bahwa DPR benar-benar tidak memihak rakyat. Sudah tidak ada alasan lagi untuk kami percaya kepada wakil kami. Saatnya untuk melawan!," tulisnya.',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
