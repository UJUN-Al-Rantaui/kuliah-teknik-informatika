<?php
    include('header.php');
    $mysql = "SELECT * FROM santri";
    $myQry = mysqli_query($koneksi, $mysql) or die ("Query Salah : " . mysqli_error($koneksi));
    $nomor = 1;
?>
            <h2>Data Santri</h2>
            <hr/>
            <br/>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <tr>
                        <th>No</th>
                        <th>NIK</th>
                        <th>Nama</th>
                        <th>Nama Ayah</th>
                        <th>Nama Bapak</th>
                        <th>Tempat Lahir</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>No Telepon</th>
                        <th>Tingkat</th>
                        <th>Lokal</th>
                        <th>Tahun Masuk</th>
                    </tr>
<?php while ($kolomData = mysqli_fetch_array($myQry)) { ?>
                    <tr>
                        <td> <?php echo $nomor++; ?> </td>
                        <td> <?php echo $kolomData["nik"]; ?> </td>
                        <td> <?php echo $kolomData["nama"]; ?> </td>
                        <td> <?php echo $kolomData["nama_ayah"]; ?> </td>
                        <td> <?php echo $kolomData["nama_ibu"]; ?> </td>
                        <td> <?php echo $kolomData["tempat_lahir"]; ?> </td>
                        <td> <?php echo indonesiaTgl($kolomData["tanggal_lahir"]); ?> </td>
                        <td> <?php echo $kolomData["alamat"]; ?> </td>
                        <td> <?php echo $kolomData["no_telepon"]; ?> </td>
                        <td> <?php echo $kolomData["tingkat"]; ?> </td>
                        <td> <?php echo $kolomData["lokal"]; ?> </td>
                        <td> <?php echo $kolomData["tahun_masuk"]; ?> </td>
                    </tr>
<?php } ?>
                </table>
            </div>
            <img src="latihan_app/img/btn_print.png" width="25" onClick="window.print();">
<?php
    include('footer.php');
?>