<?php
include '../auth/koneksi.php';


$query = mysqli_query($mysqli,"SELECT * from tb_member");




?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">    
 <center>
<h2> Data Member</h2>

  <table class="table table-bordered">
	<thead class="bg-info">
	<tr>
	<th>IdMember</th> <th>Nama</th> <th>NoKtp</th> <th>Alamat</th> <t
	</tr>
	</thead>
	<tbody>
	<?php
	$no=1;
	while ($result = mysqli_fetch_array($query)){
		$no++;
	?>
	<tr>
		<td><?php echo $result['IdMember'];?></td> 
		<td><?php echo $result['Nama'];?></td> 
		<td><?php echo $result['NoKtp'];?></td>
		<td><?php echo $result['Alamat'];?></td> 
		
	</tr>
	<?php }?>
	
	</tbody>
	</table>

