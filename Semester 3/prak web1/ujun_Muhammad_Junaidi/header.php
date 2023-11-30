<?php
include("koneksi.php");
include("liblary.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praktikum Pemrograman Web</title>
    <link rel="stylesheet" href="latihan_app/css/site.css">
    <link rel="stylesheet" href="latihan_app/css/bootstrap.min.css">
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
                                <li><a href="santri_data.php">Data Santri</a></li>
                            </ul>
                        </li>

                        <li><a href="#">Laporan</a>
                            <ul>
                                <li><a href="karyawan_cetak.php">Cetak Data Karyawan</a></li>
                                <li><a href="santri_cetak.php">Cetak Data Santri</a></li>
                            </ul>
                        </li>

                        <li><a href="tentang-saya.php">Tentang Saya</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="content">