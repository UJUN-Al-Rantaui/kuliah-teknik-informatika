<?php
    include('header.php');

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
        $delete_query = "DELETE FROM karyawan WHERE nik='$nik'";
        $delete = mysqli_query($koneksi, $delete_query) or die (mysqli_error($koneksi));
        if ($delete) {
?>

        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Data Karyawan Berhasil Dihapus😎👌.
        </div>  
        <meta http-equiv='refresh' content="1;url=karyawan_data.php" />

<?php
        } else {
?>

        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Ups, data karyawan gagal dihapus, silahkan coba lagi😓🙏.
        </div>  
        <meta http-equiv='refresh' content="1;url=karyawan_data.php"/>

<?php
        }
    }
    include('footer.php');
?>