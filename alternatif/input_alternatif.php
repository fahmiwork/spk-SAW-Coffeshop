<?php 
 
include '../aksilogin/config.php';

	

$sql = mysqli_query($koneksi, "insert into tb_nilai(id_coffeshop, kriteria1,kriteria2,kriteria3,kriteria4,kriteria5,kriteria6) values ('{$_POST['id_coffeshop']}','{$_POST['kriteria1']}','{$_POST['kriteria2']}','{$_POST['kriteria3']}','{$_POST['kriteria4']}','{$_POST['kriteria5']}','{$_POST['kriteria6']}')");
mysqli_query($sql);
header("location:../alternatif.php?pesan=input");
 
?>