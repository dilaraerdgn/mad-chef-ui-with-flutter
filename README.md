# mad-chef-ui-with-flutter (Mad Chef Mobil Arayüz Geliştirme)
Flutter ile geliştirilmiş Mad Chef mobil arayüz projesi. Özel font kullanımı, dinamik liste yapısı ve öğrenci numarasına göre değişen renk modülü içerir.

## Proje Kapsamı:
Bu proje; Mad Chef mobil uygulamasının ana ekran arayüzünün Flutter SDK kullanılarak, belirli tasarım oranları (2/5 üst, 3/5 alt), özel font entegrasyonu ve dinamik bir liste yapısı ile geliştirilmesini kapsar. Proje, statik bir tasarımdan işlevsel bir UI kodlamasına geçiş sürecidir.

## Ürün / Hizmet Kapsamı:(Product Scope, Product Description)
Video Alanı: Ekranın üst kısmında bulunan, özel HEX renk koduyla boyanmış ve ortasında dairesel bir "Play" ikonu barındıran görsel alan.
İçerik Alanı: Ekranın alt kısmında yer alan, "Monoton" fontu ile başlıklandırılmış ve hem yerel (assets) hem uzak (network) kaynaklı görseller barındıran kaydırılabilir (scrollable) liste.
Görsel Standartlar: Kenar yuvarlama (Border Radius), yazı taşma yönetimi (Overflow) ve özel tipografi kurallarının uygulanması.

## Ana İş Kalemleri
### İş Kalemi A:
Proje altyapısının kurulması (Flutter projesinin oluşturulması ve yapılandırılması).
### İş Kalemi B:
Asset yönetimi (Monoton fontunun ve 3 adet yerel görselin projeye dahil edilmesi, pubspec.yaml ayarları).
### İş Kalemi C:
Üst panel (2/5 oran) tasarımı ve öğrenci numarasına göre dinamik HEX renk hesaplama kodunun yazılması.
### İş Kalemi D:
Alt panel (3/5 oran) tasarımı ve "ListView.builder" yapısının kurulması.
### İş Kalemi E:
Veri çekme işlemleri (İnternet üzerinden 4 adet dinamik görselin asenkron olarak yüklenmesi).
### İş Kalemi F:
UI/UX Optimizasyonu (BorderRadius, Overflow ve Monoton font stilinin tüm metinlere uygulanması).
### Diğer bilinen özellikler:
Uygulama şimdilik statik verilerle (Lorem Ipsum) çalışmakta olup, gelecekte bir API entegrasyonuna uygun mimaride (Widget bazlı) kodlanmıştır.


*Not: Hem proje klosöründe bulunan assest klosöründeki resimler hem de internetten rastgele çekilen resimler kullanılmaktadır.
Monoton fonu assets klosöründedir.*

*Gerekli kod dosyaları ve klosör yapıları mevcuttur. Bu dosyaları klonlayarak ui tasarımını çalıştırabilirsiniz.*
