<?php include('header.php'); ?>
<?php

if (isset($_POST['add'])) {
    $nisn          = $_POST['nisn'];
    $nama          = $_POST['nama'];
    $kelas         = $_POST['kelas'];
    $wali_siswa    = $_POST['wali_siswa'];
    $tempat_lahir  = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $alamat        = $_POST['alamat'];
    
    $cek = mysqli_query($koneksi, "SELECT * FROM tsiswa WHERE nisn='$nisn'");
    if (mysqli_num_rows($cek)) {
?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            NISN Sudah Ada...!
        </div>
        <?php
    } else {
        $insert = mysqli_query($koneksi, "INSERT INTO tsiswa(nisn, nama, kelas, wali_siswa, tempat_lahir, tanggal_lahir, alamat) VALUES ('$nisn', '$nama', '$kelas', '$wali_siswa', '$tempat_lahir', '$tanggal_lahir', '$alamat')") or die(mysqli_error($koneksi));
        if ($insert) {
        ?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Data Siswa Berhasil Disimpan.
            </div>
        <?php
        } else {
        ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Ups, data SIswa gagal disimpan!.
            </div>
<?php
        }
    }
}

$now = strtotime(date("Y-m-d"));
$maxyear = date("Y-m-d", strtotime('- 5 year', $now));
$minyear = date("Y-m-d", strtotime('- 21 year', $now));
?>

<h2>Data Siswa &raquo; Tambah Data</h2>
<hr>
<form action="" class="form-horizontal" method="post">
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">NISN</label>
        <div class="col-sm-2">
            <input type="text" name="nisn" class="form-control" maxlength="10" placeholder="NISN" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Nama</label>
        <div class="col-sm-4">
            <input type="text" name="nama" pattern="[a-zA-Z ]+" class="form-control" placeholder="Nama" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Kelas</label>
        <div class="col-sm-4">
            <input type="text" name="kelas" pattern="[0-9]+" class="form-control" placeholder="Kelas" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Wali Siswa</label>
        <div class="col-sm-4">
            <input type="text" name="wali_siswa" pattern="[a-zA-Z ]+" class="form-control" placeholder="Wali Siswa" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Tempat Lahir</label>
        <div class="col-sm-4">
            <input type="text" name="tempat_lahir" class="form-control" placeholder="Tempat Lahir" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Tanggal Lahir</label>
        <div class="col-sm-4">
            <input type="date" name="tanggal_lahir" value="" max="<?php echo $maxyear ?>" min="<?php echo $minyear ?>" class="input-group form-control" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Alamat</label>
        <div class="col-sm-3">
            <textarea type="text" name="alamat" class="form-control" placeholder="Alamat" required></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">&nbsp;</label>
        <div class="col-sm-6">
            <button type="submit" name="add" class="btn btn-sm btn-primary" value="Simpan">Simpan</button>
            <button type="reset" class="btn btn-sm btn-warning" value="Reset">Reset</button>
            <button class="btn btn-sm btn-danger" onClick="history.back()">Kembali</button>
        </div>
    </div>
</form>
<?php
include('footer.php');
?>