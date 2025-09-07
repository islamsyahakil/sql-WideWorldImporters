# 📊 SQL QA Portfolio – WideWorldImporters

Kumpulan SQL Query untuk latihan **Quality Assurance (QA) Database Testing** menggunakan sample database resmi dari Microsoft, **WideWorldImporters**.  
Semua skenario ditulis dalam SQL Server (T-SQL) dan berfokus pada metode dasar yang sering dipakai dalam QA: **SELECT, JOIN, Aggregation, UPDATE, INSERT, DELETE**.

---

## 🛠 Tools
- **Database:** SQL Server 2022 Express  
- **Management:** SQL Server Management Studio (SSMS)  
- **Sample DB:** WideWorldImporters  

---

## 📂 Struktur Repository
- `cases/` → berisi file `.sql` untuk tiap skenario  
- `README.md` → halaman utama repo (ringkasan & dokumentasi)  

---

## 🚀 Daftar Test Cases

### 🔹 [SQL 1 – SELECT Queries](cases/01_Select_+_Filter_Dasar.sql)
- **SELECT + Filter Dasar** → tampilkan customer dari kota tertentu (contoh: Sylvanite).  
- **SELECT with Limit (TOP)** → ambil 5 customer pertama.  
- **SELECT with LIKE** → cari customer dengan WebsiteURL yang mengandung `http`.  

---

### 🔹 [SQL 2 – JOIN Queries](cases/02_Join_Left_Anti-Join.sql)
- **Left Anti-Join** → cari Orders yang tidak memiliki Invoice (validasi konsistensi data).  

---

### 🔹 [SQL 3 – Aggregation](cases/03_Aggregation.sql)
- **SUM + GROUP BY** → hitung total penjualan per customer, tampilkan 10 customer dengan penjualan tertinggi.  

---

### 🔹 [SQL 4 – UPDATE (Safe Transaction)](cases/04_Update_with_Rollback.sql)
- **UPDATE dengan TRAN/ROLLBACK** → contoh memperbarui PhoneNumber sesuai aturan sederhana.  
- Hasil dicek dengan query validasi `COUNT(*)`.  
- Perubahan **di-rollback** sehingga database tetap bersih.  

---

### 🔹 [SQL 5 – INSERT + DELETE (Safe Transaction)](cases/05_Insert_and_Delete.sql)
- **INSERT** → tambahkan 1 customer dummy dengan data lengkap.  
- **Verification** → cek apakah data berhasil masuk.  
- **ROLLBACK** → batalkan perubahan agar database tetap bersih.  

---

## ✅ Acceptance Criteria
Setiap query memiliki tujuan QA testing yang jelas:  
- Data yang ditampilkan sesuai filter (SELECT).  
- Konsistensi relasi antar tabel (JOIN).  
- Perubahan data selalu aman (UPDATE/INSERT dengan `BEGIN TRAN` + `ROLLBACK`).  

---

## 📌 Catatan
- Database yang digunakan: **WideWorldImporters** bawaan Microsoft. Bisa didapatkan di https://github.com/microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0
- Semua query bersifat **read-only** atau dijalankan dalam **transaction rollback** sehingga aman untuk latihan.  

---

✍️ Dibuat sebagai bagian dari portofolio SQL untuk **QA Database Testing** **Islamsyah Akil**.  
