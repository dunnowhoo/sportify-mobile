# Sportify
### Let Sportify be your rhythm to fitness success!
At Sportify, we believe that finding the right equipment, apparel, and supplements should be as easy as pressing play on your favorite workout playlist. Whether you're gearing up for the gym, a weekend hike, or training for your next competition, we've got everything you need to perform at your best.

# Tugas 8

## 1. Kegunaan dan Keuntungan `const` di Flutter

### Kegunaan `const`
Di Flutter, `const` digunakan untuk mendefinisikan objek atau widget yang bersifat **immutable** (tidak dapat diubah) dan **compile-time constant** (dapat ditentukan pada saat kompilasi). `const` memungkinkan Flutter untuk menghindari pembuatan objek yang sama berulang kali dan menghemat memori serta meningkatkan efisiensi aplikasi.

### Keuntungan `const`
- **Menghemat Memori**: Dengan menggunakan `const`, objek yang sama hanya akan dibuat sekali dan disimpan dalam cache. Hal ini mengurangi alokasi memori yang tidak perlu.
- **Meningkatkan Performa**: `const` mencegah pembuatan objek berulang kali selama runtime, yang membuat rendering widget lebih cepat dan efisien.
- **Meningkatkan Kejelasan Kode**: `const` memastikan bahwa nilai widget atau objek tidak berubah selama runtime, yang meningkatkan konsistensi.

### Kapan Menggunakan `const`
- Gunakan `const` pada widget atau objek yang nilainya tidak berubah selama runtime, seperti teks statis, ikon, dan warna yang tidak bergantung pada state aplikasi.
- Pada widget stateless yang tidak berubah di dalam hierarki widget, menggunakan `const` dapat membantu Flutter mengoptimalkan performa aplikasi.

### Kapan Tidak Menggunakan `const`
- Jika widget atau objek berubah berdasarkan state atau input pengguna, maka jangan gunakan `const`, karena ini akan menyebabkan Flutter membatasi pembaruan yang mungkin diinginkan.

---

## 2. Perbandingan `Column` dan `Row` di Flutter

### Column
- **Fungsi**: `Column` digunakan untuk menata widget secara vertikal.
- **Properti Penting**: `mainAxisAlignment`, `crossAxisAlignment`, `children`.
- **Contoh Implementasi**:
  ```dart
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Item 1"),
      Text("Item 2"),
      Text("Item 3"),
    ],
  )
  ```

### Row
- **Fungsi**: `Row` digunakan untuk menata widget secara horizontal.
- **Properti Penting**: `mainAxisAlignment`, `crossAxisAlignment`, `children`.
- **Contoh Implementasi**:
  ```dart
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(Icons.home),
      Icon(Icons.star),
      Icon(Icons.settings),
    ],
  )
  ```

---

## 3. Elemen Input yang Digunakan dan Tidak Digunakan pada Formulir

### Elemen Input yang Digunakan
Pada halaman formulir, beberapa elemen input yang digunakan:
- **TextFormField**: Untuk memasukkan nama, harga, jumlah, dan deskripsi produk. Elemen ini memiliki fitur validasi input untuk memastikan data yang diisi sesuai.
- **ElevatedButton**: Untuk menyimpan produk baru setelah mengisi semua input.

### Elemen Input Lain yang Tidak Digunakan
Elemen input lain yang tidak digunakan tetapi tersedia di Flutter:
- **Checkbox**: Elemen input yang memungkinkan pengguna memilih antara opsi benar/salah.
- **Radio**: Elemen input yang memungkinkan pengguna memilih satu opsi dari beberapa opsi yang tersedia.
- **Slider**: Mengambil nilai dari rentang angka yang ditentukan.
- **Switch**: Menyediakan opsi untuk mengaktifkan atau menonaktifkan pengaturan.
  
---

## 4. Mengatur Tema di Aplikasi Flutter

### Cara Mengatur Tema
Untuk mengatur tema yang konsisten dalam aplikasi Flutter, gunakan `ThemeData` di root aplikasi (`MaterialApp`) untuk mengatur tampilan yang seragam di seluruh aplikasi. Properti yang dapat dikustomisasi meliputi `primaryColor`, `colorScheme`, `textTheme`, `iconTheme`, dan lainnya.

### Implementasi Tema di Aplikasi
```dart
MaterialApp(
  title: 'Sportify',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
      secondary: Colors.green[400],
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      headline6: TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  home: MyHomePage(),
);
```

Tema ini memastikan bahwa warna dan gaya teks yang dipilih berlaku di seluruh aplikasi, sehingga konsistensi terjaga.

---

## 5. Menangani Navigasi dalam Aplikasi Multi-Halaman di Flutter

### Cara Menangani Navigasi
Navigasi di Flutter dapat ditangani menggunakan `Navigator`, yang menyediakan fungsi untuk mendorong (push) atau menghapus (pop) halaman dari stack. Dalam aplikasi multi-halaman, kita menggunakan `Navigator.push` untuk berpindah ke halaman baru dan `Navigator.pop` untuk kembali ke halaman sebelumnya.

### Contoh Navigasi
Di `MyHomePage`, navigasi ke `ProductFormPage`:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const ProductFormPage()),
);
```

# Tugas 7
## 1. Stateless Widget dan Stateful Widget

- **Stateless Widget**: Stateless Widget adalah widget yang **tidak memiliki state yang dapat berubah**. Setelah widget ini dibangun (rendered), tampilannya tidak akan berubah meskipun ada perubahan data atau input dari pengguna. Stateless widget digunakan untuk tampilan yang statis atau tidak interaktif. Contoh dari stateless widget dalam Flutter adalah `Text`, `Icon`, dan `Container`.

- **Stateful Widget**: Stateful Widget adalah widget yang **memiliki state yang dapat berubah** selama siklus hidupnya. Widget ini mampu memperbarui dirinya sendiri setiap kali ada perubahan pada state. Misalnya, jika ada perubahan pada nilai yang ditampilkan atau interaksi dengan pengguna yang mengubah tampilan, widget ini akan dirender ulang. Contoh dari stateful widget adalah widget yang menerima input pengguna seperti `TextField` atau `Checkbox`.

**Perbedaan Utama**:
  - Stateless widget tidak memiliki state dan tidak berubah selama aplikasi berjalan, sementara stateful widget memiliki state yang dapat diubah dan di-update saat aplikasi berjalan.
  - Stateless widget lebih ringan karena tidak memiliki state, sementara stateful widget cenderung lebih kompleks karena adanya state yang harus dikelola.

## 2. Widget yang Digunakan pada Proyek

Berikut adalah widget-widget yang digunakan dalam proyek ini beserta fungsinya:

- **Scaffold**: Menyediakan struktur dasar untuk halaman aplikasi, termasuk `AppBar` dan `body`.
- **AppBar**: Menampilkan bagian atas halaman yang berfungsi sebagai judul aplikasi.
- **Padding**: Menambahkan jarak di sekitar widget tertentu untuk memberikan ruang kosong.
- **Column**: Menyusun widget secara vertikal.
- **Row**: Menyusun widget secara horizontal.
- **GridView.count**: Membuat grid dengan jumlah kolom yang tetap, digunakan untuk menampilkan tombol dalam bentuk grid.
- **Card**: Membuat kotak dengan bayangan yang digunakan sebagai kartu informasi.
- **InkWell**: Menangani event klik pada widget, digunakan dalam `ItemCard` agar widget dapat ditekan.
- **Snackbar**: Menampilkan pesan sementara di bagian bawah layar saat pengguna melakukan interaksi tertentu.
- **Icon**: Menampilkan ikon dalam widget, digunakan untuk menambahkan ikon pada tombol.
- **Text**: Menampilkan teks dalam aplikasi.

## 3. Fungsi dari `setState()`

`setState()` adalah metode yang digunakan pada Stateful widget untuk **memperbarui state dari widget**. Ketika fungsi `setState()` dipanggil, widget akan dirender ulang untuk menampilkan perubahan terbaru yang terjadi pada state. Variabel-variabel yang dapat terdampak oleh `setState()` adalah semua variabel yang memengaruhi tampilan, seperti variabel yang menyimpan data dinamis atau status yang berubah berdasarkan interaksi pengguna. 

**Contoh**: Jika ada sebuah variabel yang menyimpan jumlah item dalam keranjang, `setState()` akan digunakan untuk memperbarui tampilan ketika item ditambahkan atau dihapus.

## 4. Perbedaan antara `const` dan `final`

- **const**: Menandakan bahwa nilai dari variabel ini **bersifat tetap dan sudah diketahui saat waktu kompilasi**. Objek `const` bersifat immutable (tidak dapat diubah) setelah dibuat.
  
  Contoh:
  ```dart
  const int a = 10; // nilai a tidak bisa diubah dan harus diketahui di waktu kompilasi
- **final**: Menandakan bahwa variabel hanya dapat diinisialisasi satu kali dan nilainya tidak dapat diubah setelah diinisialisasi, tetapi nilainya tidak harus diketahui saat waktu kompilasi, bisa ditentukan saat runtime.

  Contoh:
  ```dart
      final int b = DateTime.now().millisecondsSinceEpoch; // nilai b diinisialisasi saat runtime

- Perbedaan Utama: const digunakan untuk nilai konstan yang diketahui saat kompilasi, sementara final digunakan untuk nilai yang ditentukan sekali saat runtime dan tidak bisa diubah setelahnya.

# Implementasi Checklist Proyek Flutter: Langkah demi Langkah

## 1. Ubah Tema Warna Aplikasi
- Buka file `main.dart`.
- Di dalam `MaterialApp`, sesuaikan skema warna aplikasi dengan mengubah `ColorScheme` untuk mencocokkan tema yang diinginkan (misalnya, menyesuaikan warna utama dan sekunder).

## 2. Ubah Widget Halaman Menu Menjadi Stateless
- Buka file `menu.dart`.
- Ubah halaman utama dari `StatefulWidget` menjadi `StatelessWidget` untuk menyederhanakan struktur widget. Hapus semua kode terkait state, seperti deklarasi `State` dan fungsi `setState()`, yang tidak diperlukan pada halaman statis ini.

## 3. Tambahkan Card Informasi Pengguna
- Deklarasikan tiga variabel untuk menyimpan informasi pengguna seperti NPM, Nama, dan Kelas di dalam `MyHomePage`.
- Buat card sederhana menggunakan widget `Card` untuk menampilkan setiap informasi ini. Letakkan card ini di bagian atas halaman sebagai informasi pengguna.

## 4. Buat Tombol Navigasi sebagai Card dengan Ikon
- Buat class baru untuk menyimpan data tombol navigasi (seperti nama dan ikon) yang akan ditampilkan pada card navigasi.
- Buat daftar tombol yang diinginkan, misalnya: "Lihat Daftar Produk", "Tambah Produk", dan "Logout".
- Setiap tombol memiliki ikon dan teks yang sesuai dengan fungsinya.

## 5. Tambahkan Fungsi untuk Menampilkan Snackbar saat Tombol Ditekan
- Untuk setiap tombol navigasi, tambahkan aksi yang memunculkan `Snackbar` dengan pesan khusus saat tombol tersebut ditekan.
- Pesan pada `Snackbar` disesuaikan dengan nama tombol yang ditekan, sehingga pengguna menerima konfirmasi interaksi.

## 6. Integrasikan Semua Elemen di Halaman Utama
- Letakkan card informasi pengguna di bagian atas halaman sebagai header.
- Gunakan `GridView` untuk menampilkan tombol navigasi dalam bentuk grid di bawah card informasi, sehingga tombol-tombol tersebut tersusun rapi.
