<?php
include('koneksi.php');
include('library.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praktikum Pemrograman Web</title>
    <link rel="stylesheet" href="css/site.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="content">
            <div class="navbar navbar-inverse">
                <div id="navbar">
                    <ul class="dropDownMenu">
                        <li><a href="./">Beranda</a></li>
                        <li><a href="#">Master Data</a>
                            <ul>
                                <li><a href="karyawan_data.php">Data Karyawan</a></li>
                                <li><a href="siswa_data.php">Data Siswa</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Laporan</a>
                            <ul>
                                <li><a href="karyawan_cetak.php">Cetak Data Karyawan</a></li>
                                <li><a href="siswa_cetak.php">Cetak Data Siswa</a></li>
                            </ul>
                        </li>
                        <li><a href="tentang_saya.php">Tentang Saya</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="content">