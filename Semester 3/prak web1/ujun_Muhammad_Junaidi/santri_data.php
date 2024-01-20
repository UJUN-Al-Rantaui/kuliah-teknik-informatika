<?php
    include('header.php');
    $mysql = "SELECT * FROM santri";
    $myQry = mysqli_query($koneksi, $mysql) or die ("Query Salah : " . mysqli_error($koneksi));
    $nomor = 1;
?>
            <h2>Data Karyawan</h2>
            <hr/>
            <div class="form-group"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></div>
            <a href="santri_add.php">Tambah Data</a>
            <br/>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <tr>
                        <th>No</th>
                        <th>NIK</th>
                        <th>Nama</th>
                        <th>Nama Ayah</th>
                        <th>Nama Ibu</th>
                        <th>Tempat Lahir</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>No Telepon</th>
                        <th>Tingkat</th>
                        <th>Lokal</th>
                        <th>Tahun Masuk</th>
                        <th>Tools</th>
                    </tr>
<?php while ($kolomData = mysqli_fetch_array($myQry)){ ?>
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
                        <td> <?php echo indonesiaTgl($kolomData["tahun_masuk"]); ?> </td>
                        <td>
                            <a href="santri_edit.php?nik=<?php echo $kolomData['nik'] ?>" title="Edit Data" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                            <a href="santri_delete.php?nik=<?php echo $kolomData['nik'] ?>" title="Hapus Data" onclick="confirm('Yakin menghapus data ini?')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                        </td>
                    </tr>
<?php } ?>
                </table>
            </div>
<?php
    include('footer.php');
?>