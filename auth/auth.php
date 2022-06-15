<?php
include 'koneksi.php';
$username = $_POST['Nama'];
$password = $_POST['NoKtp'];

$query = mysqli_query($mysqli,"SELECT * from tb_member where Nama = '$username' and NoKtp = '$password' ");
$result = mysqli_num_rows($query);



if($result > 0){
	header("location:../member/member.php");
}
else{
	header("location../index.php?pesan=error");
}

?>