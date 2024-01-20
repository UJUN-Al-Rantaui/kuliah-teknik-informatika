<?php include('header.php'); ?>
<h2>Data Siswa</h2>
<hr />
<div class="form-group"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></div>
<a href="siswa_add.php">Tambah Data</a>
<br />
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
            <th>Tools</th>
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
                <td>
                    <a href="siswa_edit.php?nisn=<?php echo $kolomData['nisn'];?>" title="Edit Data" class="btn btn-primary btn-sm">
                        <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                    </a>
                    <a href="siswa_delete.php?nisn=<?php echo $kolomData['nisn'];?>" title="Hapus Data" onclick="confirm('Yakin menghapus data ini?')" class="btn btn-danger btn-sm">
                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                    </a>
                </td>
            </tr>
        <?php } ?>
    </table>
</div>
<?php include('footer.php');?>