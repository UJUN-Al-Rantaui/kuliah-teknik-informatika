<?php
    include('header.php');

    // $now = strtotime(date("Y-m-d"));
    // $maxyear = date("Y-m-d", strtotime('- 16 year', $now));
    // $minyear = date("Y-m-d", strtotime('- 50 year', $now));
    $huruf = "[A-Za-z ]+";
    // echo var_dump($now);

    if (isset($_POST['add'])) {
        $nik           = $_POST['nik'];
        $nama          = $_POST['nama'];
        $nama_ayah          = $_POST['nama_ayah'];
        $nama_ibu          = $_POST['nama_ibu'];
        $tempat_lahir  = $_POST['tempat_lahir'];
        $tanggal_lahir = $_POST['tanggal_lahir'];
        $alamat        = $_POST['alamat'];
        $no_telepon    = $_POST['no_telepon'];
        $tingkat       = $_POST['tingkat'];
        $lokal         = $_POST['lokal'];
        $tahun_masuk   = date("Y-m-d");

        // echo var_dump($_POST);
        $cek = mysqli_query($koneksi, "SELECT * FROM santri WHERE nik=\"$nik\"");
        if (mysqli_num_rows($cek)) {
?>

            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                NIK Sudah Ada...!
            </div>  
            
<?php
        } else {
            $insert_query = <<<MS
            INSERT INTO 
            santri (
                nik, 
                nama, 
                nama_ayah, 
                nama_ibu, 
                tempat_lahir, 
                tanggal_lahir, 
                alamat, 
                no_telepon, 
                tingkat, 
                lokal, 
                tahun_masuk
            )
            VALUES (
                '$nik', 
                '$nama', '
                $nama_ayah', 
                '$nama_ibu', 
                '$tempat_lahir', 
                '$tanggal_lahir', 
                '$alamat', 
                '$no_telepon', 
                '$tingkat', 
                '$lokal', 
                '$tahun_masuk'
            )
            MS;
            $insert = mysqli_query($koneksi, $insert_query) or die (mysqli_error($koneksi));
            if ($insert) {
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
    }
?>

            <h2>Data Santri &raquo Tambah Data</h2>
            <hr>
            <form action="" class="form-horizontal" method="post">
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">NIK</label>
                    <div class="col-sm-2">
                        <input type="text" name="nik" class="form-control" maxlength="10" placeholder="NIK" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Nama</label>
                    <div class="col-sm-4">
                        <input type="text" name="nama" pattern="<?php echo $huruf ?>" class="form-control" placeholder="Nama" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Ayah</label>
                    <div class="col-sm-4">
                        <input type="text" name="nama_ayah" pattern="<?php echo $huruf ?>" class="form-control" placeholder="Nama Ayah" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Ayah</label>
                    <div class="col-sm-4">
                        <input type="text" name="nama_ibu" pattern="<?php echo $huruf ?>" class="form-control" placeholder="Nama Ibu">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tempat Lahir</label>
                    <div class="col-sm-4">
                        <input type="text" name="tempat_lahir" class="form-control" placeholder="Tempat Lahir">
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
                    <label for="" class="col-sm-3 control-label">No Telepon</label>
                    <div class="col-sm-3">
                        <input type="text" name="no_telepon" class="form-control" maxlength="10" placeholder="No Telepon" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tingkat</label>
                    <div class="col-sm-2">
                        <select name="tingkat" id="" class="form-conrol" required="required">
                            <option value=""> - None - </option>
                            <option value="Ibtidaiyah">Ibtidaiyah</option>
                            <option value="Awwaliyah">Awwaliyah</option>
                            <option value="Wustho">Wustho</option>
                            <option value="Ulya">Ulya</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Lokal</label>
                    <div class="col-sm-2">
                        <select name="lokal" id="" class="form-conrol" required="required">
                            <option value=""> - None - </option>
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