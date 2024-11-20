# tokohijau

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

TUGAS 7 PBP

1. Stateless widget : Widget ini bersifat statis dan tidak pernah berubah. Contoh widget stateless adalah Icon, IconButton, dan Text. Stateful widget : Widget ini dapat berubah, misalnya ketika pengguna berinteraksi dengannya. Stateful widget menyimpan data dan dapat berubah. Proses kerja stateless dan stateful widget hampir sama, namun ada perbedaan pada tahapan Internal State. Internal State adalah tahapan untuk menambahkan state atau mengubah data pada stateful widget. Jika Internal State disebabkan oleh UI, maka sistem akan melakukan re-render tampilan dari widget awal. 

2. Pada proyek ini saya menggunakan widget Stateless yang berfungsi untuk menampilkan objek-objek statis yang sudah ditentukan dari awal oleh pemrogram, karena proyek ini belum menerima masukan non-statis dari pengguna, Stateless widget menjadi perangkat yang sempurna untuk mengembangkan proyek ini, salah satu contoh dari penggunaan Stateless widget adalah pada teks "hijau" di kiri atas dan kanan bawah, Icon dan Card.

3. setState() adalah metode yang digunakan dalam StatefulWidget untuk memberi tahu framework bahwa ada perubahan pada status atau data widget, dan widget tersebut perlu dibangun ulang untuk mencerminkan perubahan tersebut di UI. Pemanggilan setState() memicu fungsi build() untuk dieksekusi kembali, memperbarui tampilan dengan nilai-nilai terbaru dari variabel yang terpengaruh. Variabel yang digunakan dalam build() dan diubah di dalam setState() akan berdampak pada pembaruan tampilan, seperti nilai angka, teks, warna, atau status lainnya.

4. Final dapaat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan. Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi berjalan.

5. Pertama, saya menciptakan kelas HomePage dengan mengextend StatelessWidget untuk menampilkan data-data statis yang saya ingin tampilkan, setelahnya saya menyiapkan list ItemHomePage untuk menampung Icons dan nama dari tiap-tiap tombol, kemudian saya mendeklarasikan List cardColors yang berguna untuk menyimpan warna tiap tombol, setelah itu saya membuat Scaffold yang berisi sebuah kotak berwarna hijau yang saya tujukan untuk menjadi bagian AppBar pada program, setelahnya saya membuat 2 teks "hijau" yang merupakan nama dari proyek e-commerce saya, yang mana kedua teks tersebut saya letakkan berlawanan arah, kemudian saya membuat sebuah body pada scaffold yang berguna sebagai penampung card-card yang nantinya akan saya buat, dimana saya juga menyiapkan spesifikasi card beserta nama-namanya agar nantinya struktur card dapat menjadi lebih rapih didalam body, setelah selesai dengan Scaffold, saya membuat widget makeCard yang berfungsi sebagai program yang mendeskripsikan seperti apa card yang nantinya akan ditampulkan pada body program, setelah selesai menentukan spesifikasi kartu, saya membuat kelas ItemHomePage yang berguna sebagai constructor untuk membuat instance dari objek ItemHomePage yang menyimpan data nama dan icon dalam tampilan aplikasi.

TUGAS 8 PBP

1. const di Flutter digunakan untuk mendeklarasikan widget atau nilai yang tidak berubah selama runtime, yang meningkatkan performa aplikasi karena widget tersebut hanya dibangun sekali. Sebaiknya gunakan const untuk widget yang sifatnya statis dan tidak berubah, seperti ikon atau teks tetap. Jangan gunakan const untuk widget yang bergantung pada perubahan data atau state.

2. Column dan Row adalah widget untuk pengaturan layout vertikal dan horizontal. Column digunakan untuk menyusun widget secara vertikal, sementara Row digunakan untuk menyusun widget secara horizontal. Misalnya, Column cocok untuk tombol yang diatur secara vertikal, sedangkan Row digunakan untuk menampilkan tombol berdampingan secara horizontal.

3. Elemen input yang digunakan di form adalah TextFormField untuk mengambil input teks seperti nama produk, deskripsi, dan harga. Elemen lain yang bisa digunakan namun tidak dipakai di sini adalah Checkbox, Radio, DropdownButton, dan Switch.

4. Tema aplikasi di Flutter saya atur melalui ThemeData di dalam MaterialApp, yang memastikan konsistensi tampilan dengan menentukan warna, font, dan elemen visual lainnya. Di aplikasi ini, tema sudah diterapkan untuk warna dan font menggunakan ThemeData.

5. Navigasi di Flutter saya implementasikan dengan menggunakan Navigator, menggunakan Navigator.push untuk pindah antar halaman dan Navigator.pop untuk kembali. Untuk aplikasi dengan banyak halaman, kita bisa menggunakan Navigator.pushReplacement atau Navigator.pushNamed untuk navigasi berbasis rute.

TUGAS 9

Tugas Implementasi Aplikasi Flutter - Toko Hijau
1. Mengapa kita perlu membuat model untuk pengambilan atau pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan untuk mengorganisir dan memetakan data JSON ke dalam objek Dart yang lebih mudah diolah. Tanpa model, kita harus mengakses data JSON secara manual setiap kali, yang bisa sangat membingungkan dan rawan kesalahan. Jika tidak ada model, bisa jadi terjadi error saat mencoba mengakses data yang tidak sesuai dengan struktur yang diharapkan.

2. Fungsi dari library http yang sudah diimplementasikan
Library http digunakan untuk melakukan request ke server (misalnya HTTP GET, POST) untuk berinteraksi dengan API. Di aplikasi ini, http membantu kita untuk mengambil data JSON dari server Django dan mengirim data JSON, seperti login, register, dan data produk, melalui request HTTP.

3. Fungsi dari CookieRequest dan mengapa instance-nya perlu dibagikan ke semua komponen di aplikasi Flutter
CookieRequest adalah kelas untuk menyimpan informasi request, seperti URL, headers, dan cookies (misalnya session cookies) yang dibutuhkan saat berkomunikasi dengan server. Instance CookieRequest perlu dibagikan agar informasi ini dapat diakses oleh semua komponen yang membutuhkan, terutama untuk menjaga sesi login pengguna.

4. Mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter
Prosesnya dimulai dengan pengguna mengisi form input (misalnya login atau tambah produk). Data yang dimasukkan kemudian dikirimkan melalui request HTTP ke server Django. Setelah server memproses data dan mengembalikan response JSON, Flutter menerima data tersebut dan menampilkannya dalam UI (misalnya menampilkan produk atau status login).

5. Mekanisme autentikasi dari login, register, hingga logout
Proses autentikasi dimulai dengan pengguna mengisi form login atau register di Flutter. Data ini dikirim ke server Django melalui HTTP request. Django memverifikasi data tersebut, memberikan token autentikasi jika berhasil login, atau menyimpan data pengguna baru jika registrasi. Token ini kemudian disimpan di aplikasi Flutter (misalnya dalam cookies atau shared preferences). Untuk logout, token dihapus dari sisi client, dan user diarahkan kembali ke halaman login.

6. Cara mengimplementasikan checklist di atas secara step-by-step
Membuat Model: Mulai dengan membuat model Dart untuk memetakan data JSON yang diterima/dikirim.
Membuat Fungsi HTTP: Gunakan library http untuk membuat request dan menangani response dari API.
Membuat CookieRequest: Buat kelas untuk menyimpan informasi terkait request (headers, cookies).
Input Data: Buat form input (misalnya login) yang mengirim data ke server melalui request HTTP.
Menampilkan Data: Setelah server mengembalikan data, parse JSON dan tampilkan dalam UI Flutter.
Autentikasi: Implementasikan alur login/register dengan menyimpan token autentikasi dan menyediakan mekanisme logout yang menghapus token.
