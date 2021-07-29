class Product {
  late final String image, title, deskripsi;
  late final int harga, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.deskripsi,
    required this.harga,
  });
}

var products = [
  Product(
    id: 1,
    image: "assets/images/masker-1.jpg",
    title: "Masker Kain 3 ply",
    deskripsi: dummyTextMasker,
    harga: 15000,
  ),
  Product(
    id: 2,
    image: "assets/images/masker-2.jpg",
    title: "Masker Wajah Reversible",
    deskripsi: dummyTextMasker,
    harga: 12000,
  ),
  Product(
    id: 3,
    image: "assets/images/masker-3.jpg",
    title: "Masker KN95",
    deskripsi: dummyTextMasker,
    harga: 35000,
  ),
  Product(
    id: 4,
    image: "assets/images/masker-4.jpg",
    title: "Masker sensi",
    deskripsi: dummyTextMasker,
    harga: 25000,
  ),
  Product(
    id: 5,
    image: "assets/images/masker-5.jpeg",
    title: "Masker N95",
    deskripsi: dummyTextMasker,
    harga: 45000,
  ),
  Product(
    id: 6,
    image: "assets/images/hand-sanitizer-1.jpg",
    title: "Hand Sanitizer Glint 500ml",
    deskripsi: dummyTextHandSani,
    harga: 85000,
  ),
  Product(
    id: 7,
    image: "assets/images/hand-sanitizer-2.jpg",
    title: "Hand Sanitizer Antis 60ml",
    deskripsi: dummyTextHandSani,
    harga: 65000,
  ),
  Product(
    id: 8,
    image: "assets/images/hand-sanitizer-3.jpg",
    title: "Hand Sanitizer secret clean 50ml",
    deskripsi: dummyTextHandSani,
    harga: 50000,
  ),
  Product(
    id: 9,
    image: "assets/images/hand-sanitizer-4.jpg",
    title: "Hand Sanitizer ULINE 236ml",
    deskripsi: dummyTextHandSani,
    harga: 105000,
  ),
  Product(
    id: 10,
    image: "assets/images/face-shield-1.jpeg",
    title: "Face Shield Balita",
    deskripsi: dummyTextFaceShield,
    harga: 25000,
  ),
  Product(
    id: 11,
    image: "assets/images/face-shield-2.jpg",
    title: "Face Shield Anak",
    deskripsi: dummyTextFaceShield,
    harga: 15000,
  ),
  Product(
    id: 12,
    image: "assets/images/face-shield-3.jpg",
    title: "Face Shield Dewasa",
    deskripsi: dummyTextFaceShield,
    harga: 15000,
  ),
];

class KeranjangProduct {
  late final String image, title;
  late final int harga, jumlah;

  KeranjangProduct(
      {required this.image,
        required this.title,
        required this.harga,
        required this.jumlah});
}

var keranjang = [
  KeranjangProduct(
      image: "assets/images/masker-2.jpg",
      title: "Masker Wajah Reversible",
      harga: 12000,
      jumlah: 2),
  KeranjangProduct(
      image: "assets/images/face-shield-2.jpg",
      title: "Face Shield Anak",
      harga: 15000,
      jumlah: 5),
  KeranjangProduct(
      image: "assets/images/hand-sanitizer-4.jpg",
      title: "Hand Sanitizer ULINE 236ml",
      harga: 105000,
      jumlah: 2),
  KeranjangProduct(
      image: "assets/images/masker-5.jpeg",
      title: "Masker N95",
      harga: 45000,
      jumlah: 1),
];

class TransaksiProduct {
  late final String tanggal, status;
  late final int jumlahTransaksi;

  TransaksiProduct(
      {required this.tanggal, required this.status, required this.jumlahTransaksi});
}
var transaksi = [
  TransaksiProduct(
    tanggal: '03-07-2021',
    status: 'Berhasil',
    jumlahTransaksi: 55000
  ),
  TransaksiProduct(
      tanggal: '01-02-2021',
      status: 'Berhasil',
      jumlahTransaksi: 75000
  ),
  TransaksiProduct(
      tanggal: '06-12-2021',
      status: 'Gagal',
      jumlahTransaksi: 35000
  ),
  TransaksiProduct(
      tanggal: '03-05-2021',
      status: 'Berhasil',
      jumlahTransaksi: 95000
  ),
];

String dummyTextMasker =
    "Masker yang dapat digunakan untuk melindungi saluran pernapasan dari debu, asap, kuman, cairan dan partikel-partikel lain yang terdapat di udara. Desain masker ini terdiri dari tiga lapis yang memiliki tali pengait ke telinga atau disebut juga earloop yang dapat memudahkan konsumen dalam pemakaiannya. Masker ini cocok untuk klinik, rumah sakit, ojek online, atau pemakaian sehari-hari. Melindungi dari debu dan kuman dan mencegah virus dari penyakit udara yang tidak baik.";
String dummyTextHandSani =
    "Penularan masif virus Covid-19 membuat masyarakat dihimbau untuk selalu menggunakan masker dan mencuci tangan sesering mungkin. Penggunaan masker dan mencuci tangan menjadi langkah yang tepat untuk mencegah penularan virus tersebut. Namun, saat disituasi tertentu terkadang sulit menemui air bersih dan sabun cuci tangan, oleh karenanya, hand sanitizer bisa dijadikan sebagai alternatif pilihan.";
String dummyTextFaceShield =
    "Face Shield merupakan alat yang digunakan sebagai pelindung wajah (mata, hidung dan mulut) dari paparan percikan droplet atau tangan yang terkontaminasi bakteri atau virus. Alat ini dilengapi dengan mika bening, sehingga penglihatan tidak terganggu dan tetap nyaman digunakan oleh pengguna kaca mata. Selain itu, alat ini juga dilengkapi karet elastis untuk dilingkarkan ke belakang kepala, sehingga penggunaannya lebih mudah dan tetap nyaman. Face shield dapat digunakan berulang setelah dibersihkan dengan menggunakan desinfektan.";

var search = [
  'Masker Kain 3 ply',
  'Masker Wajah Reversible',
  'Masker KN95',
  'Masker sensi',
  'Masker N95',
  'Hand Sanitizer Glint 500ml',
  'Hand Sanitizer Antis 60ml',
  'Hand Sanitizer secret clean 50ml',
  'Hand Sanitizer ULINE 236ml',
  'Face Shield Balita',
  'Face Shield Anak',
  'Face Shield Dewasa'
];

var suggestSearch = ['Masker Kain', 'Face Shield Dewasa', 'Hand Sanitizer'];
