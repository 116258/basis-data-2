# 💻 Praktikum SQL SELECT

## 👨‍🎓 Identitas
| Keterangan | Isi |
|---|---|
| Nama | Nama Kamu |
| NIM | NIM Kamu |
| Kelas | Kelas Kamu |

---

# 📚 Materi Praktikum

- SELECT *
- SELECT kolom tertentu
- WHERE
- WHERE NULL dan NOT NULL
- ORDER BY
- AS (Alias)

---

# 1️⃣ SELECT Untuk Melihat Semua Kolom Dari Suatu Tabel

## ✨ Syntax

```sql
SELECT * FROM mahasiswa;
```

## 📸 Hasil

![Select Semua Kolom](Select Untuk melihat semua kolom dari suatu tabel.PNG)

---

# 2️⃣ SELECT Untuk Melihat Kolom Tertentu

## ✨ Syntax

```sql
SELECT nama_mahasiswa, email
FROM mahasiswa;
```

## 📸 Hasil

![Select Kolom](Select Untuk melihat kolom(-kolom) tertentu.PNG)

---

# 3️⃣ WHERE Digunakan Untuk Membatasi Hasil SELECT

## ✨ Syntax

```sql
SELECT *
FROM mahasiswa
WHERE jenis_kelamin='L';
```

## 📸 Hasil

![Where](Where Digunakan untuk membatasi hasil SELECT yang ditampilkan.PNG)

---

# 4️⃣ WHERE NULL dan NOT NULL

## ✨ Syntax

```sql
SELECT *
FROM mahasiswa
WHERE email IS NOT NULL;
```

## 📸 Hasil

![Where Null](Where ketika NULL dan NOT NULL.PNG)

---

# 5️⃣ ORDER BY Digunakan Untuk Mengurutkan Hasil SELECT

## ✨ Syntax

```sql
SELECT *
FROM mahasiswa
ORDER BY nama_mahasiswa ASC;
```

## 📸 Hasil

![Order By](Order By Digunakan untuk mengurutkan hasil SELECT..PNG)

---

# 6️⃣ AS Digunakan Untuk Mengganti Nama Kolom Pada Tampilan

## ✨ Syntax

```sql
SELECT nama_mahasiswa AS Nama,
email AS Email_Mahasiswa
FROM mahasiswa;
```

## 📸 Hasil

![AS](AS digunakan untuk mengganti nama kolom pada tampilan.PNG)

---

# ✅ Kesimpulan

Pada praktikum ini telah dipelajari:
- SELECT
- WHERE
- ORDER BY
- AS
