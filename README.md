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
