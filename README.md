# EKİTAP OTOMASYONU
# E-Kitap Sistemi ER Diyagramı

Bu proje, bir e-kitap sistemi için tasarlanmış veritabanı yapısını temsil eden ER (Entity-Relationship) diyagramını içermektedir. Aşağıda, diyagramdaki tabloların açıklamaları ve aralarındaki ilişkiler detaylı bir şekilde açıklanmıştır.

## Genel Bakış
ER diyagramı, bir e-kitap platformundaki kullanıcılar, kitaplar, yazarlar, yayınevleri, kategoriler ve kullanıcıların kişisel kütüphaneleri gibi bileşenlerin arasındaki ilişkileri modellemektedir. Veritabanı, kullanıcıların kitaplara erişimi, kitap değerlendirmeleri ve sipariş işlemleri gibi işlemleri yönetmek üzere tasarlanmıştır.

---

## Tablolar ve Alanlar

### 1. *kullanicilar*
- *idkullanicilar* (INT): Kullanıcıların benzersiz kimliği.
- *kullanicad* (VARCHAR): Kullanıcının adı.
- *kullanicisoyad* (VARCHAR): Kullanıcının soyadı.
- *eposta* (VARCHAR): Kullanıcının e-posta adresi.
- *sifre* (VARCHAR): Kullanıcının şifresi.

### 2. *kisiselkutuphane*
- *idkisiselkutuphane* (INT): Kişisel kütüphanenin benzersiz kimliği.
- *kitapdurumu* (VARCHAR): Kitap durumu (okundu, okunacak vb.).
- *kisiselkutuphaneol* (VARCHAR): Kütüphaneye eklenme durumu.
- *yorum/gorus_idyorum/gorusid* (INT): İlgili yorum veya görüş.

### 3. *kitap*
- *kitapid* (INT): Kitapların benzersiz kimliği.
- *kitapad* (VARCHAR): Kitap adı.
- *isbn* (VARCHAR): ISBN numarası.
- *yayintarihi* (VARCHAR): Yayın tarihi.
- *kitapdili* (VARCHAR): Kitap dili.

### 4. *yazarlar*
- *idyazarlar* (INT): Yazarların benzersiz kimliği.
- *yazarad* (VARCHAR): Yazar adı.
- *yazarsoyad* (VARCHAR): Yazar soyadı.

### 5. *yayınevi*
- *idyayinevi* (INT): Yayınevlerinin benzersiz kimliği.
- *yayineviad* (VARCHAR): Yayınevi adı.
- *yayinevikurulusyili* (VARCHAR): Yayınevinin kuruluş yılı.

### 6. *kategori*
- *idkategori* (INT): Kategorilerin benzersiz kimliği.
- *kategoriad* (VARCHAR): Kategori adı.

### 7. *siparis/indirme*
- *idsiparis/indirmeid* (INT): Sipariş veya indirme işleminin benzersiz kimliği.
- *tarih* (DATETIME): Sipariş/indirme tarihi.

### 8. *yorum/gorus*
- *idyorum/gorusid* (INT): Yorumların veya görüşlerin benzersiz kimliği.
- *metin* (VARCHAR): Yorum metni.
- *puan* (INT): Yorum puanı.
- *yayintarihi* (DATETIME): Yorumun yayın tarihi.

---

## Tablolar Arasındaki İlişkiler

1. *kullanicilar* ve *kisiselkutuphane* arasında bire çok ilişki bulunmaktadır. Bir kullanıcı birden fazla kişisel kütüphaneye sahip olabilir.

2. *kitap, **yazarlar* ve *yayinevi* tabloları arasında ilişkiler:
   - Bir kitap bir veya birden fazla yazara ait olabilir (*kitap* ve *yazarlar* arasındaki ilişki).
   - Bir kitap bir yayınevi tarafından yayımlanır (*kitap* ve *yayinevi* arasındaki ilişki).

3. *kitap* ve *kategori* arasında bire çok ilişki vardır. Bir kitap bir kategoriye ait olabilir.

4. *kullanicilar, **kitap, ve **siparis/indirme* arasındaki ilişki, kullanıcıların kitap siparişleri ve indirmeleri üzerinden modellenmiştir.

5. *yorum/gorus* ve *kitap* arasında bire çok ilişki bulunmaktadır. Bir kitap birden fazla yorum alabilir.

---

## Kullanım
Bu ER diyagramı, e-kitap sisteminin veritabanı tasarımını belgelemek ve uygulama geliştiricilere rehberlik etmek amacıyla oluşturulmuştur. Diyagram, kullanıcıların e-kitap platformundaki işlemlerini ve ilişkilerini anlamayı kolaylaştırır.

---

## Lisans
Bu proje açık kaynak olup, herkes tarafından kullanılabilir ve geliştirilebilir.
