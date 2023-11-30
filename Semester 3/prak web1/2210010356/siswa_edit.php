<?php include('header.php'); ?>
<?php

$nisn = $_GET['nisn'];
$sql = mysqli_query($koneksi, "SELECT * FROM tsiswa WHERE nisn='$nisn'");
if (mysqli_num_rows($sql) == 0) {
?>
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        NISN Tidak Ada...!
    </div>
    <?php
} else {
    $row = mysqli_fetch_assoc($sql);
}

// Proses Simpan data
if (isset($_POST['save'])) {
    $nisn          = $_POST['nisn'];
    $nama          = $_POST['nama'];
    $kelas         = $_POST['kelas'];
    $wali_siswa    = $_POST['wali_siswa'];
    $tempat_lahir  = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $alamat        = $_POST['alamat'];

    $update = mysqli_query($koneksi, "UPDATE tsiswa SET nama = '$nama', kelas='$kelas', wali_siswa='$wali_siswa', tempat_lahir = '$tempat_lahir', tanggal_lahir = '$tanggal_lahir', alamat = '$alamat';") or die(mysqli_error($koneksi));

    if ($update) {
    ?>
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Data siswa Berhasil Disimpan.
        </div>
    <?php
    } else {
    ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Data siswa gagal disimpan, silahkan coba lagi.
        </div>
<?php
    }
}

$now = strtotime(date("Y-m-d"));
$maxyear = date("Y-m-d", strtotime('- 5 year', $now));
$minyear = date("Y-m-d", strtotime('- 21 year', $now));
?>

<h2>Data Siswa &raquo; Edit Data</h2>
<hr>
<form action="" class="form-horizontal" method="post">
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">NISN</label>
        <div class="col-sm-2">
            <input type="text" name="nisn" class="form-control" maxlength="10" value="<?php echo $row['nisn'];?>" placeholder="NISN" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Nama</label>
        <div class="col-sm-4">
            <input type="text" name="nama" pattern="[a-zA-Z ]+" class="form-control" value="<?php echo $row['nama'];?>" placeholder="Nama" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Kelas</label>
        <div class="col-sm-4">
            <input type="text" name="kelas" pattern="[0-9]+" class="form-control" value="<?php echo $row['kelas'];?>" placeholder="Kelas" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Wali Siswa</label>
        <div class="col-sm-4">
            <input type="text" name="wali_siswa" pattern="[a-zA-Z ]+" class="form-control" value="<?php echo $row['wali_siswa'];?>" placeholder="Wali Siswa" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Tempat Lahir</label>
        <div class="col-sm-4">
            <input type="text" name="tempat_lahir" class="form-control" min="<?php echo $minyear ?>" max="<?php echo $maxyear ?>" value="<?php echo $row['tempat_lahir'];?>" placeholder="Tempat Lahir" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Tanggal Lahir</label>
        <div class="col-sm-4">
            <input type="date" name="tanggal_lahir" value="<?php echo $row['tanggal_lahir'];?>" class="input-group form-control" required>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">Alamat</label>
        <div class="col-sm-3">
            <textarea type="text" name="alamat" class="form-control" placeholder="Alamat" required><?php echo $row['alamat'];?></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-3 control-label">&nbsp;</label>
        <div class="col-sm-6">
            <button type="submit" name="save" class="btn btn-sm btn-primary" value="Simpan">Simpan</button>
            <button type="reset" class="btn btn-sm btn-warning" value="Reset">Reset</button>
            <button class="btn btn-sm btn-danger" onClick="history.back()">Kembali</button>
        </div>
    </div>
</form>
<?php
include('footer.php');
?>