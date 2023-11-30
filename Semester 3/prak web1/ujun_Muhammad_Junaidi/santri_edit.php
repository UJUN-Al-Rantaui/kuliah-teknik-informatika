<?php
    include('header.php');

    // $now = strtotime(date("Y-m-d"));
    // $maxyear = date("Y-m-d", strtotime('- 16 year', $now));
    // $minyear = date("Y-m-d", strtotime('- 50 year', $now));
    $huruf = "[a-zA-Z ]+";

    $nik = $_GET['nik'];
    $sql = mysqli_query ($koneksi, "SELECT * FROM santri WHERE nik='$nik'");
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
    if (isset($_POST['simpan'])) {

        $nik = $_POST['nik'];
        $nama = $_POST['nama'];
        $nama_ayah = $_POST['nama_ayah'];
        $nama_ibu = $_POST['nama_ibu'];
        $tempat_lahir = $_POST['tempat_lahir'];
        $tanggal_lahir = $_POST['tanggal_lahir'];
        $alamat = $_POST['alamat'];
        $no_telepon = $_POST['no_telepon'];
        $tingkat = $_POST['tingkat'];
        $lokal = $_POST['lokal'];
        $tahun_masuk = $_POST['tahun_masuk'];

        $update_query = <<<MS
        UPDATE santri
        SET 
            nama = '$nama',
            nama_ayah = '$nama_ayah',
            nama_ibu = '$nama_ibu',
            tempat_lahir = '$tempat_lahir',
            tanggal_lahir = '$tanggal_lahir',
            alamat = '$alamat',
            no_telepon = '$no_telepon',
            tingkat = '$tingkat',
            lokal = '$lokal',
            tahun_masuk = '$tahun_masuk'
        WHERE nik='$nik';
        MS;
        $update = mysqli_query($koneksi, $update_query) or die (mysqli_error($koneksi));

        if ($update) {
?>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Data santri Berhasil Disimpan😎👌.
            </div>  
<?php
        } else {
?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Ups, data santri gagal disimpan!😓🙏.
            </div>  
<?php
        }
    }
?>

            <h2>Data Santri &raquo Edit Data</h2>
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
                    <label for="" class="col-sm-3 control-label">Nama Ayah</label>
                    <div class="col-sm-4">
                        <input type="text" name="nama_ayah" pattern="<?PHP echo $huruf ?>" class="form-control" value="<?php echo $row['nama_ayah'] ?>" placeholder="Nama" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Nama Ibu</label>
                    <div class="col-sm-4">
                        <input type="text" name="nama_ibu" pattern="<?PHP echo $huruf ?>" class="form-control" value="<?php echo $row['nama_ibu'] ?>" placeholder="Nama" required>
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
                    <label for="" class="col-sm-3 control-label">Tingkat</label>
                    <div class="col-sm-2">
                        <select name="tingkat" id="" class="form-conrol" required>
                            <option value="<?php echo $row['tingkat'] ?>" selected> - Tingkat Terbaru - </option>
                            <option value="Ibtidaiyah">Ibtidaiyah</option>
                            <option value="Awwliyah">Awwliyah</option>
                            <option value="Wustho">Wustho</option>
                            <option value="Ulya">Ulya</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <b>Tingkat Terbaru : </b>
                        <span class="label label-success"><?php echo $row['tingkat'] ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Lokal</label>
                    <div class="col-sm-2">
                        <select name="lokal" id="" class="form-conrol" required>
                            <option value="<?php echo $row['lokal'] ?>" selected> - Lokal Terbaru - </option>
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>
                            <option value="E">E</option>
                            <option value="F">F</option>
                            <option value="G">G</option>
                            <option value="H">H</option>
                            <option value="I">I</option>
                            <option value="J">J</option>
                            <option value="K">K</option>
                            <option value="L">L</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <b>Lokal Terbaru : </b>
                        <span class="label label-success"><?php echo $row['lokal'] ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tahun Masuk</label>
                    <div class="col-sm-4">
                        <input type="date" name="tahun_masuk" value="<?php echo $row['tahun_masuk'] ?>" class="input-group form-control" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">&nbsp;</label>
                    <div class="col-sm-6">
                        <button type="submit" name="simpan" class="btn btn-sm btn-primary" value="Simpan">Simpan</button>
                        <button type="reset" class="btn btn-sm btn-warning" value="Reset">Reset</button>
                        <button class="btn btn-sm btn-danger" onClick="history.back()">Kembali</button>
                    </div>
                </div>
            </form>
            <?php
    include('footer.php');
    ?>