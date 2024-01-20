<?php include('header.php'); ?>
<h2>Data Siswa</h2>
<hr>
<br>
<div class="table-responsive">
    <table class="table table-stripped table-hover">
        <tr>
            <th>No</th>
            <th>NISN</th>
            <th>Nama</th>
            <th>Kelas</th>
            <th>Wali Siswa</th>
            <th>Tempat Lahir</th>
            <th>Tanggal Lahir</th>
            <th>Alamat</th>
        </tr>
        <?php
        $mySql = "SELECT * FROM tsiswa";
        $myQry = mysqli_query($koneksi, $mySql) or die("Query Salah : " . mysqli_error($koneksi));
        $nomor = 1;

        while ($kolomData = mysqli_fetch_array($myQry)) { ?>
            <tr>
                <td> <?php echo $nomor++; ?> </td>
                <td> <?php echo $kolomData["nisn"]; ?> </td>
                <td> <?php echo $kolomData["nama"]; ?> </td>
                <td> <?php echo $kolomData["kelas"]; ?> </td>
                <td> <?php echo $kolomData["wali_siswa"]; ?> </td>
                <td> <?php echo $kolomData["tempat_lahir"]; ?> </td>
                <td> <?php echo IndonesiaTgl($kolomData["tanggal_lahir"]); ?> </td>
                <td> <?php echo $kolomData["alamat"]; ?> </td>
            </tr>
        <?php } ?>
    </table>
</div>
<img src="img/btn_print.png" width="25" onClick="window.print();">
<?php include('footer.php'); ?>