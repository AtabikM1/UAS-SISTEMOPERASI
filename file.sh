#!/bin/bash

# Program sederhana untuk menyapa pengguna


    # Meminta pengguna untuk memasukkan namanya
    echo "Selamat datang!"
    echo -n "Siapa nama Anda? "
    read nama

    # Menyapa pengguna berdasarkan nama yang dimasukkan
    echo "Halo, $nama! Selamat datang di program ini."
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
    echo "8. tampilkan penggunaan disk"
    echo "9. Cari file (berdasarkan nama)"
    echo "10.Informasi sistem"
    echo "11.keluar"
   
    # Meminta pengguna untuk memilih opsi
    echo -n "Silakan pilih opsi (1/2/3/4/5/6/7/11): "
    read pilihan

    # Melakukan pemilihan berdasarkan opsi yang dipilih pengguna
    case $pilihan in
        1)
            # Menampilkan isi direktori
            echo "Isi dari direktori saat ini:"
            ls -l
            ;;
        2)
            # Menambahkan file baru
            echo -n "Masukkan nama file yang ingin ditambahkan: "
            read nama_file
            touch "$nama_file"
            echo "File $nama_file berhasil ditambahkan."
            ;;
        3)
            # Menghapus file
            echo -n "Masukkan nama file yang ingin dihapus: "
            read nama_file
            if [ -e "$nama_file" ]; then
                rm "$nama_file"
                echo "File $nama_file berhasil dihapus."
            else
                echo "File $nama_file tidak ditemukan."
            fi
            ;;
        4)
            
	    # Menampilkan informasi CPU
	    echo "Informasi CPU:"
	    lscpu
	    ;;

        5)
            # Menampilkan kalender
            echo "Kalender bulan ini:"
            cal
            ;;
        6)
            # Membuka browser
            echo "Membuka browser..."
            # Ganti 'firefox' dengan browser yang Anda gunakan, misalnya 'google-chrome'
            firefox &
            ;;
        7)
            # Menampilkan proses pada pc
            echo "Menampilkan proses..."
            ps aux
            ;;
        8)
            # Menampilkan penggunaan disk pada direktori saat ini
            echo "Penggunaan disk pada direktori saat ini:"
            du -sh ./*
            ;;
        9)
            # Pencarian file berdasarkan nama
            echo -n "Masukkan nama file yang ingin dicari: "
            read nama_file_cari
            if [ -e "$nama_file_cari" ]; then
                echo "File $nama_file_cari ditemukan."
            else
                echo "File $nama_file_cari tidak ditemukan."
            fi
            ;;
        10)
            # Menampilkan informasi sistem
            echo "Informasi sistem:"
            uname -a
            lscpu
            ;;
        11)
            # Keluar dari program
            echo "Terima kasih telah menggunakan program ini. Selamat tinggal, $nama!"
            exit
            ;;
        *)
            # Opsi tidak valid
            echo "Opsi tidak valid. Silakan pilih opsi yang sesuai."
            ;;
    esac
done