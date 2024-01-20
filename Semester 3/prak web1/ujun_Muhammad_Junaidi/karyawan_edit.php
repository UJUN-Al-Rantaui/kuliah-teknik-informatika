<?php
    include('header.php');

    if($_GET) {
        echo 'nice';
    }

    $now = strtotime(date("Y-m-d"));
    $maxyear = date("Y-m-d", strtotime('- 16 year', $now));
    $minyear = date("Y-m-d", strtotime('- 50 year', $now));
    $huruf = "[a-zA-Z ]+";

    $nik = $_GET['nik'];
    $sql = mysqli_query ($koneksi, "SELECT * FROM karyawan WHERE nik='$nik'");
    if (mysqli_num_rows($sql) == 0) {
?>
             <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                NIK Tidak Ada...!
            </div>
<?php
    } else {
        $row = mysqli_fetch_assoc($sql);
    }

    // Proses penyimpanan data
    if (isset($_POST['save'])) {

        $nik = $_POST['nik'];
        $nama = $_POST['nama'];
        $tempat_lahir = $_POST['tempat_lahir'];
        $tanggal_lahir = $_POST['tanggal_lahir'];
        $alamat = $_POST['alamat'];
        $no_telepon = $_POST['no_telepon'];
        $jabatan = $_POST['jabatan'];
        $status = $_POST['status'];

        $update_query = <<<MS
        UPDATE karyawan
        SET 
            nama = '$nama',
            tempat_lahir = '$tempat_lahir',
            tanggal_lahir = '$tanggal_lahir',
            alamat = '$alamat',
            no_telepon = '$no_telepon',
            jabatan = '$jabatan',
            status = '$status'
        WHERE nik='$nik';
        MS;
        $update = mysqli_query($koneksi, $update_query) or die (mysqli_error($koneksi));

        if ($update) {
?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Data Karyawan Berhasil Disimpan😎👌.
            </div>  
<?php
        } else {
?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Ups, data karyawan gagal disimpan!😓🙏.
            </div>  
<?php
        }
    }
?>

            <h2>Data Karyawan &raquo Edit Data</h2>
            <hr>
            <form action="" class="form-horizontal" method="post">
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">NIK</label>
                    <div class="col-sm-2">
                        <input type="text" name="nik" class="form-control" maxlength="10" value="<?php echo $row['nik'] ?>" placeholder="NIK" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Nama</label>
                    <div class="col-sm-4">
                        <input type="text" name="nama" pattern="<?PHP echo $huruf ?>" class="form-control" value="<?php echo $row['nama'] ?>" placeholder="Nama" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tempat Lahir</label>
                    <div class="col-sm-4">
                        <input type="text" name="tempat_lahir" class="form-control" min="<?php echo$minyear ?>" max="<?php echo$maxyear ?>" value="<?php echo $row['tempat_lahir'] ?>" placeholder="Tempat Lahir" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tanggal Lahir</label>
                    <div class="col-sm-4">
                        <input type="date" name="tanggal_lahir" value="<?php echo $row['tanggal_lahir'] ?>" class="input-group form-control" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Alamat</label>
                    <div class="col-sm-3">
                        <textarea type="text" name="alamat" class="form-control" placeholder="Alamat" required><?php echo $row['alamat'] ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">No Telepon</label>
                    <div class="col-sm-3">
                        <input type="text" name="no_telepon" class="form-control" maxlength="10" value="<?php echo $row['no_telepon'] ?>" placeholder="No Telepon" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Jabatan</label>
                    <div class="col-sm-2">
                        <select name="jabatan" id="" class="form-conrol" required>
                            <option value="<?php echo $row['jabatan'] ?>" selected> - Jabatan Terbaru - </option>
                            <option value="Operator">Operator</option>
                            <option value="Leader">Leader</option>
                            <option value="Supervisor">Supervisor</option>
                            <option value="Manager">Manager</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <b>Jabatan sekarang : </b>
                        <span class="label label-success"><?php echo $row['jabatan'] ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Status</label>
                    <div class="col-sm-2">
                        <select name="status" id="" class="form-conrol" required>
                            <option value="<?php echo $row['status'] ?>" selected> - Status Terbaru - </option>
                            <option value="Outsourcing">Outsourcing</option>
                            <option value="Kontrak">Kontrak</option>
                            <option value="Tetap">Tetap</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <b>Status sekarang : </b>
                        <span class="label label-success"><?php echo $row['status'] ?></span>
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