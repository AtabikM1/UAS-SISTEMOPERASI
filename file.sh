#!/bin/bash

# Program sederhana untuk menyapa pengguna

# Meminta pengguna untuk memasukkan namanya
echo "Selamat datang!"
echo -n "Siapa nama Anda? "
read nama

# Menyapa pengguna berdasarkan nama yang dimasukkan
echo "Halo, $nama! Selamat datang di program ini."

# Menampilkan menu pilihan
echo "Menu Pilihan:"
echo "1. Tampilkan Isi Direktori"
echo "2. Tambah File"
echo "3. Hapus File"
echo "4. Keluar"

# Meminta pengguna untuk memilih opsi
echo -n "Silakan pilih opsi (1/2/3/4): "
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
        touch $nama_file
        echo "File $nama_file berhasil ditambahkan."
        ;;
    3)
        # Menghapus file
        echo -n "Masukkan nama file yang ingin dihapus: "
        read nama_file
        if [ -e $nama_file ]; then
            rm $nama_file
            echo "File $nama_file berhasil dihapus."
        else
            echo "File $nama_file tidak ditemukan."
        fi
        ;;
    4)
        # Keluar dari program
        echo "Terima kasih telah menggunakan program ini. Selamat tinggal, $nama!"
        exit
        ;;
    *)
        # Opsi tidak valid
        echo "Opsi tidak valid. Silakan pilih opsi yang sesuai."
        ;;
esac