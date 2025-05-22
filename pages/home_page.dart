import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> fakeArticles = const [
    {
      'user': 'Ahmet',
      'date': '20 Mayıs 2025',
      'title': 'Sahte Makale Tespiti Üzerine',
      'summary': '%95 özgünlük, sahte içerik yok',
    },
    {
      'user': 'Mehmet',
      'date': '19 Mayıs 2025',
      'title': 'Veri Bilimi ve Makaleler',
      'summary': '%85 özgünlük, dikkat gerekli',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ekran arka planı beyaz
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: fakeArticles.length,
        itemBuilder: (context, index) {
          final article = fakeArticles[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kullanıcı ve tarih
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            article['user'] ?? '',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            article['date'] ?? '',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Makale   başlığı
                  Text(
                    article['title'] ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Özet
                  Text(
                    article['summary'] ?? '',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  const SizedBox(height: 12),

                  // Detay butonu
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // TODO: Detay sayfasına yönlendirme
                      },
                      icon: const Icon(Icons.picture_as_pdf),
                      label: const Text('Detay'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}