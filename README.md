# Data Diri

|  |  |
|--|--|
| NIM | **2341720090** |
| Nama Lengkap | **ATABIK MUTAWAKILALALLAH** |
| Kelas | TI-1B |
| Dosen Pengampu 1 | Erfan Rohadi, S.T., M.Eng., Ph.D.                                   |
| Dosen Pengampu 2 | [Mohammad Faried Rahmat, S.ST., M.Tr.T](https://github.com/mrhmt80) |

# SISTEM OPERASI

### Laporan Program Bash: Menu Interaktif
#### Deskripsi Program
Program yang saya bangun adalah sebuah skrip Bash interaktif yang menyapa pengguna dan menampilkan menu dengan berbagai opsi untuk melakukan tugas-tugas sistem. Pengguna dapat memilih dari beberapa opsi seperti menampilkan isi direktori, menambah atau menghapus file, menampilkan informasi CPU, dan lainnya. Skrip ini terus berjalan dalam loop hingga pengguna memilih opsi untuk keluar.

#### Struktur Program
Menyapa Pengguna:

Program dimulai dengan menampilkan sapaan dan meminta pengguna untuk memasukkan nama mereka. Nama ini kemudian digunakan untuk menyapa pengguna secara personal.
Menu Pilihan:

Setelah menyapa pengguna, program memasuki loop while true yang menampilkan menu pilihan berulang kali sampai pengguna memilih untuk keluar.
#### Menu ini memiliki sebelas opsi:
Menampilkan isi direktori saat ini.
Menambahkan file baru.
Menghapus file yang ada.
Menampilkan informasi CPU.
Menampilkan kalender bulan ini.
Membuka browser.
Menampilkan proses yang sedang berjalan.
Menampilkan penggunaan disk pada direktori saat ini.
Mencari file berdasarkan nama.
Menampilkan informasi sistem.
Keluar dari program.



Penjelasan Detail Setiap Bagian
Sapaan Awal:

                bash
                Salin kode
                echo "Selamat datang!"
                echo -n "Siapa nama Anda? "
                read nama
                echo "Halo, $nama! Selamat datang di program ini."


Menampilkan pesan selamat datang.
Meminta input nama pengguna.
Menyapa pengguna berdasarkan nama yang diberikan.


Loop Menu:

            bash
            Salin kode
            while true; do
                # Menampilkan menu pilihan
                echo "Menu Pilihan:"
                echo "1. Tampilkan Isi Direktori"
                echo "2. Tambah File"
                echo "3. Hapus File"
                echo "4. Informasi CPU"
                echo "5. Tampilkan Kalender"
                echo "6. Buka Browser"
                echo "7. Tampilkan proses"
                echo "8. Tampilkan penggunaan disk"
                echo "9. Cari file (berdasarkan nama)"
                echo "10. Informasi sistem"
                echo "11. Keluar"


Meminta Pilihan Pengguna:

            bash
            Salin kode
            echo -n "Silakan pilih opsi (1/2/3/4/5/6/7/8/9/10/11): "
            read pilihan


Eksekusi Berdasarkan Pilihan:

Menggunakan case statement untuk mengeksekusi blok kode berdasarkan pilihan pengguna.
1. Menampilkan Isi Direktori:

            bash
            Salin kode
            echo "Isi dari direktori saat ini:"
            ls -l

2. Menambahkan File:

            bash
            Salin kode
            echo -n "Masukkan nama file yang ingin ditambahkan: "
            read nama_file
            touch "$nama_file"
            echo "File $nama_file berhasil ditambahkan."

3. Menghapus File:

            bash
            Salin kode
            echo -n "Masukkan nama file yang ingin dihapus: "
            read nama_file
            if [ -e "$nama_file" ]; then
                rm "$nama_file"
                echo "File $nama_file berhasil dihapus."
            else
                echo "File $nama_file tidak ditemukan."
            fi

4. Menampilkan Informasi CPU:

                bash
                Salin kode
                echo "Informasi CPU:"
                lscpu
5. Menampilkan Kalender:

                bash
                Salin kode
                echo "Kalender bulan ini:"
                cal
6. Membuka Browser:

                bash
                Salin kode
                echo "Membuka browser..."
                firefox &

7. Menampilkan Proses yang Sedang Berjalan:

                bash
                Salin kode
                echo "Menampilkan proses..."
                ps aux

8. Menampilkan Penggunaan Disk:

                bash
                Salin kode
                echo "Penggunaan disk pada direktori saat ini:"
                du -sh ./*

9. Mencari File Berdasarkan Nama:

            bash
            Salin kode
            echo -n "Masukkan nama file yang ingin dicari: "
            read nama_file_cari
            if [ -e "$nama_file_cari" ]; then
                echo "File $nama_file_cari ditemukan."
            else
                echo "File $nama_file_cari tidak ditemukan."
            fi

10. Menampilkan Informasi Sistem:

            bash
            Salin kode
            echo "Informasi sistem:"
            uname -a
            lscpu

11. Keluar dari Program:

        bash
        Salin kode
        echo "Terima kasih telah menggunakan program ini. Selamat tinggal, $nama!"
        exit
        Opsi Tidak Valid:

        bash
        Salin kode
        echo "Opsi tidak valid. Silakan pilih opsi yang sesuai."


#### Penutup
Program ini dirancang untuk memberikan antarmuka interaktif yang sederhana namun efektif bagi pengguna untuk melakukan berbagai tugas sistem. Dengan memanfaatkan case statement dan loop while true, program dapat terus berjalan dan merespons input pengguna hingga pengguna memutuskan untuk keluar. Program ini sangat bermanfaat untuk pemula yang ingin belajar dasar-dasar pemrograman Bash dan skrip sistem Linux.






