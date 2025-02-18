# AI-Driven Decision Making

## Latar Belakang

Aku sedang bercerita, kawan...

## Masalah

AI hanya tahu data apa yang kita berikan kepadanya.

### Efeknya

Hal ini bisa membatasi akurasi dan kualitas keputusan yang dapat dibuat jika data yang diberikan tidak lengkap, terstruktur dengan baik, atau tidak mencakup semua aspek yang relevan.

## Solusi

Untuk mengatasi masalah ini, ada beberapa langkah yang perlu dilakukan:

- **Mengumpulkan data yang relevan**: Menyediakan data yang mencakup berbagai aspek yang berhubungan dengan keputusan yang akan diambil.
- **Membersihkan dan menata data**: Menghapus data yang tidak relevan dan memperbaiki kesalahan data untuk meningkatkan kualitas analisis.
- **Memperbarui data secara berkala**: Agar tetap relevan, data harus diperbaharui secara berkala dengan informasi terbaru.
- **Mengintegrasikan sumber data yang beragam**: Menggabungkan data dari berbagai sumber untuk mendapatkan gambaran yang lebih komprehensif.

## Apa yang Dibutuhkan?

- **Wawancara dengan Pihak Terkait**:  
   Untuk memahami proses pengambilan keputusan yang lebih dalam, penting untuk melakukan wawancara dengan pihak-pihak yang terlibat langsung dalam analisis data dan pengambilan keputusan. Beberapa hal yang perlu dicari tahu adalah:

  - Apa yang biasa mereka lakukan saat melihat data?
  - Apa faktor-faktor yang mereka pertimbangkan dalam membuat keputusan?
  - Apa alasan yang mendasari pengambilan keputusan tersebut?
  - Bagaimana mereka menilai keakuratan atau relevansi data yang diberikan?

  Dengan memahami hal-hal ini, aku bisa memprogram AI untuk mereplikasi proses berpikir tersebut, sehingga AI dapat memberikan keputusan yang lebih mendekati keputusan manusia yang terinformasi.

- **Model AI yang besar**: Dengan kemampuan untuk menyimpan riwayat obrolan yang besar dan menerima permintaan dalam jumlah besar.  
   _(Ini masih tahap awal, yang penting adalah implementasi pertama bisa berjalan lancar.)_

- **Membuat ulang struktur data perusahaan**: Agar lebih memudahkan integrasi dan implementasi AI ke dalam sistem.  
   _(Hal ini juga akan membantu memenuhi permintaan terkait performa aplikasi, keamanan, dan kenyamanan.)_

- **Tambahan karyawan**: Untuk menangani pekerjaan yang tersisa, karena aku akan fokus pada implementasi AI.

## Pembagian Layanan Aplikasi

Ke depannya, aplikasi akan dibagi menjadi beberapa layanan terpisah untuk meningkatkan performa dan skalabilitas:

- **Auth**: Menangani otentikasi dan keamanan.
- **AI**: Pengolahan dan analisis data menggunakan AI.
- **Backend**: Pengelolaan logika bisnis dan interaksi dengan database.
- **Frontend**: User interface yang menghubungkan pengguna dengan aplikasi.
- **Notifikasi**: Pengelolaan notifikasi sesuai kebutuhan.
- **File**: Pengelolaan file dan media.

### Keuntungan Pembagian Layanan

Karena aplikasi dibagi menjadi beberapa layanan terpisah, dibutuhkan server yang lebih besar. Namun, ini menjadi keuntungan karena server yang ada saat ini sudah cukup besar untuk menangani aplikasi monolith dan akan lebih optimal saat digunakan untuk layanan-layanan terpisah.

## Analisis Risiko

Beberapa potensi risiko dalam implementasi AI:

- **Keterbatasan Data**: Walaupun kita berusaha mengumpulkan data yang relevan, ada kemungkinan data yang kita butuhkan tidak tersedia atau sulit didapatkan.
- **Kesalahan dalam Analisis**: AI bisa membuat kesalahan dalam menganalisis data jika data yang diberikan tidak cukup atau tidak terstruktur dengan baik.
- **Keamanan Data**: Perlu dipastikan bahwa data yang digunakan dan disimpan tetap aman dan tidak terpapar risiko kebocoran.

## Penekanan pada Keterlibatan Tim dalam Pengembangan AI

Agar data dapat diimplementasikan dengan efektif, kita perlu **konsep yang benar-benar matang**. Tanpa konsep yang jelas dan terstruktur, hasil implementasi AI bisa melenceng dari tujuan awal, yang akan sangat merugikan. Aku bisa membantu dalam membuat konsep ini, sehingga kita dapat memastikan bahwa implementasi AI tidak berbelok dari tujuan yang sudah disepakati.

## Pembagian Layanan Aplikasi: Spesifikasikan Integrasi Antar Layanan

Pengintegrasian antar layanan akan dilakukan dengan menggunakan metode seperti:

- **API Gateway**: Menggunakan API Gateway untuk mengelola komunikasi antar layanan.
- **Message Queues (RabbitMQ, Kafka)**: Untuk menangani komunikasi antar layanan yang lebih terdesentralisasi dan memastikan skalabilitas.

## Pengukuran Keberhasilan

Untuk memastikan implementasi AI berjalan dengan sukses, kita perlu mengukur beberapa indikator keberhasilan, seperti:

- **Akurasi Keputusan AI**: Mengukur seberapa baik keputusan yang dibuat AI sebanding dengan keputusan manusia atau keputusan yang diinginkan.
- **Waktu Pengambilan Keputusan**: Mengukur seberapa cepat AI dapat menganalisis data dan memberikan keputusan.
- **Tingkat Kepuasan Pengguna**: Mengumpulkan feedback dari pengguna tentang kualitas keputusan yang dihasilkan AI.
