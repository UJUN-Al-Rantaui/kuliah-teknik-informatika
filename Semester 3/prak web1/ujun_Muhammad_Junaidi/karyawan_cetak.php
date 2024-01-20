<?php
    include('header.php');
    $mysql = "SELECT * FROM karyawan";
    $myQry = mysqli_query($koneksi, $mysql) or die ("Query Salah : " . mysqli_error($koneksi));
    $nomor = 1;
?>
            <h2>Data Karyawan</h2>
            <hr/>
            <br/>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <tr>
                        <th>No</th>
                        <th>NIK</th>
                        <th>Nama</th>
                        <th>Tempat Lahir</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>No Telepon</th>
                        <th>Jabatan</th>
                        <th>Status</th>
                    </tr>
<?php while ($kolomData = mysqli_fetch_array($myQry)) { ?>
                    <tr>
                        <td> <?php echo $nomor++; ?> </td>
                        <td> <?php echo $kolomData["nik"]; ?> </td>
                        <td> <?php echo $kolomData["nama"]; ?> </td>
                        <td> <?php echo $kolomData["tempat_lahir"]; ?> </td>
                        <td> <?php echo indonesiaTgl($kolomData["tanggal_lahir"]); ?> </td>
                        <td> <?php echo $kolomData["alamat"]; ?> </td>
                        <td> <?php echo $kolomData["no_telepon"]; ?> </td>
                        <td> <?php echo $kolomData["jabatan"]; ?> </td>
                        <td> <?php echo $kolomData["status"]; ?> </td>
                    </tr>
<?php } ?>
                </table>
            </div>
            <img src="latihan_app/img/btn_print.png" width="25" onClick="window.print();">
<?php
    include('footer.php');
?>