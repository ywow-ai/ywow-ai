# **🚀 Frontend Dulu, Backend Menyusul: Langkah Awal Microservices**

## **1. Latar Belakang: Kenapa Perlu Berubah?**

💡 **Masalah yang Kita Hadapi Saat Ini:**

### **🖥️ Tampilan**

Bapak Direktur sering mengeluhkan UI aplikasi, terutama di **mobile**. Banyak **ruang kosong tidak terpakai**, sementara tabel data justru terlalu kecil. Hasilnya? **Pengalaman pengguna buruk** dan informasi sulit dibaca.

### **🛣️ Arsitektur Monolith**

Bayangkan **jalan raya besar** yang dilewati oleh semua kendaraan—mulai dari mobil kecil hingga truk besar. Seharusnya **pengguna sepeda** bisa melaju bebas, tapi mereka tetap harus menunggu kendaraan besar lewat.

Nah, sistem kita **masih menggunakan PHP monolith**, yang **bersifat blocking**. Itu artinya:

- ✅ **Permintaan kecil tetap harus menunggu permintaan besar selesai**.
- ✅ **Proses satu per satu, tidak bisa berjalan paralel**.

### **⚡ Performa**

Saat ini, server kita **masih baik-baik saja**, tapi kita **bisa lebih memaksimalkan resource**. VPS **bukan sekadar hosting**, itu adalah **komputer aktif** yang bisa menjalankan **banyak layanan secara bersamaan**.

### **🛠️ Struktur Data**

Setiap kali ada perubahan data, **sering muncul informasi yang salah** di aplikasi.  
**Kenapa?**

- **Data sulit dikelola** dalam struktur yang sekarang.
- **Solusi:** Kita butuh **struktur yang lebih modular** supaya lebih mudah diperbarui tanpa mengacaukan sistem lain.
- Hal ini akan lebih memudahkan dalam pengecekan ketika ketika ada ketidakcocokan informasi.

---

## **2. Microservices**

🔄 **Monolith vs Microservices**

- **🟡 Monolith = Sentralisasi.** Semua data dan layanan terpusat di satu tempat.
- **🟢 Microservices = Desentralisasi.** Setiap layanan berdiri sendiri dan hanya saling terhubung melalui **API**.

Dengan **microservices**:

- ✅ **Frontend bisa lebih fleksibel** dalam mengambil data.
- ✅ **Backend bisa lebih scalable**, setiap layanan bisa dikembangkan secara independen.
- ✅ **Performa lebih optimal**, karena proses bisa berjalan **paralel, tidak perlu menunggu antrian panjang**.
- ✅ **Dan yang lebih penting...**, Kedepannya, kita juga akan memberikan API kita ke pihak ketiga. Karena aplikasi sudah berbasis API, kita tidak perlu membuat API baru saat pihak ketiga meminta data.

---

## **3. Layanan yang Akan Dipisah & Teknologi yang Digunakan**

🎯 **Kita tidak langsung memisah semuanya!** Kita mulai dari yang paling berdampak: **Frontend dengan React.**  
💡 **Berikut layanan lain yang akan menyusul:**

### **🔐 Auth (Elysia) → Otentikasi & Keamanan**

- Di masa depan, kita ingin punya **SSO (Single Sign-On)** seperti login Shopee yang bisa pakai **Google atau Facebook**.
- **Kenapa Elysia?**
  - ✅ Menggunakan **TypeScript**, performa tinggi.
  - ✅ **Asynchronous** → Tidak perlu menunggu proses sebelumnya selesai.
  - ✅ **Keamanan lebih baik** → **NIK & password hanya disimpan di Auth Service**.

---

### **🛠️ Backend (Laravel) → Logika Bisnis & Database**

- **Kenapa Laravel?**
  - ✅ Banyak developer kita sudah familiar.
  - ✅ Aplikasi sekarang masih Laravel 8, kita bisa migrasi ke Laravel 11.
  - ✅ **Database lebih terstruktur** tanpa mencampur login & otentikasi.

📌 **Penting!** Data pengguna **ada di backend**, tapi **password tetap di Auth Service**.

---

### **🎨 Frontend (React) → User Interface**

- **Kenapa React?**
  - ✅ **Komponen reusable** → Lebih cepat dikembangkan.
  - ✅ **State Management lebih efisien**.
  - ✅ **Lebih fleksibel** dalam mengambil data dari berbagai microservices.

Dengan React, **UI jadi lebih dinamis & responsif**, sesuai dengan feedback dari pengguna!

---

### **📂 File (Apache) → Pengelolaan File & Media**

- **Kenapa Apache?**
  - ✅ Lebih **efisien untuk file storage** dibanding menyimpannya langsung di backend.
  - ✅ **Tidak membebani Laravel**, sehingga backend tetap fokus pada logika bisnis.

---
