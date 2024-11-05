# tugas_pbp_mobile

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