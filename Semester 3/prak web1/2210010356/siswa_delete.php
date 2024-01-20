<?php include('header.php') ?>
<?php
if ($_GET) {
    if (empty($_GET['nisn'])) {
?>
        <b>Data yang dihapus tidak ada</b>
        <?php
    } else {
        $mySql = "DELETE FROM tsiswa WHERE nisn='" . $_GET['nisn'] . "'";
        $myQry = mysqli_query($koneksi, $mySql) or die("Error hapus data " . mysqli_error($koneksi));
        if ($myQry) {
        ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Data siswa berhasil dihapus.
            </div>
            <meta http-equiv='refresh' content="1;url=siswa_data.php" />
<?php
        }
    }
}
?>