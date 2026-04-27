import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // Görseldeki debug bandını tutmak için
      title: 'Mad Chef UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MadChefScreen(),
    );
  }
}

class MadChefScreen extends StatelessWidget {
  const MadChefScreen({super.key});

  // Öğrenci numaranızın son iki hanesini buraya giriniz (Örn: 97)
  final String ogrenciNoSonIkiHane = "60";

  @override
  Widget build(BuildContext context) {
    // Madde b: Arkaplan rengini öğrenci numarasına göre dinamik oluşturma (#975050)
    Color topBgColor = Color(int.parse("0xFF${ogrenciNoSonIkiHane}5050"));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50), // Görseldeki yeşil tonu
        title: const Text("Çılgın Şef"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          // ÜST KISIM: Ekranın 2/5'lik alanı (Madde b)
          Expanded(
            flex: 2,
            child: Container(
              color: topBgColor,
              child: Center(
                // Play ikonunun arkasındaki arkaplan
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2), // Saydam koyu arkaplan
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: Colors.white, // Play ikonunun kendi rengi
                  ),
                ),
              ),
            ),
          ),

          // ALT KISIM: Ekranın 3/5'lik alanı (Madde b, c, d, e, f)
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Madde c: İstenen başlık yazısı
                  const Text(
                    "Bunları da beğenebilirsiniz",
                    style: TextStyle(
                      fontFamily: 'Monoton', // Madde d ve f: Font kullanımı
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  // Madde e: ListView ve 7 elemanlı yapı
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return _buildListItem(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Liste elemanlarını oluşturan yardımcı widget
  Widget _buildListItem(int index) {
    // Madde e: İlk 3 görsel asset'ten, kalan 4 görsel internetten
    bool isAsset = index < 3;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Görsel Alanı
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Madde f: borderRadius kullanımı
            child: Container(
              width: 100,
              height: 75,
              color: Colors.grey[300], // Resim yüklenene kadar görünen gri alan
              child: isAsset
                  // assets/images/image_0.jpg, image_1.jpg şeklinde varlıklarınız olmalı
                  ? Image.asset(
                      'assets/images/image_$index.jpg', 
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.image, color: Colors.grey),
                    )
                  : Image.network(
                      'https://picsum.photos/200/150?random=$index', // İnternetten rastgele görsel
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, color: Colors.grey),
                    ),
            ),
          ),
          const SizedBox(width: 12),
          
          // Yazı Alanı
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                  style: TextStyle(
                    fontFamily: 'Monoton', // Madde f: fontFamily
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis, // Madde f: Overflow kullanımı
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}