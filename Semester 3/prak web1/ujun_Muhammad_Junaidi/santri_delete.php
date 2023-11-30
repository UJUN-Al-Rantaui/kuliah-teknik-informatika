<?php
    include('header.php');

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
        $delete_query = "DELETE FROM santri WHERE nik='$nik'";
        $delete = mysqli_query($koneksi, $delete_query) or die (mysqli_error($koneksi));
        if ($delete) {
?>

        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Data Satri Berhasil Dihapus😎👌.
        </div>  

<?php
        } else {
?>

        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            Ups, data Satri gagal dihapus!😓🙏.
        </div>  

<?php
        }
    }
    include('footer.php');
?>