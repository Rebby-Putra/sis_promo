<?php
include '../auth/koneksi.php';


$query = mysqli_query($mysqli,"SELECT * from tb_barang");




?>

<center>
<h2> Data Barang</h2>
<table class= "table table-bordered table-responsive" width="100%">

	<thead class="bg-info">
	<tr>
	<th>Kd_Barang</th> <th>Nama_Barang</th> <th>Harga_Barang</th> 
	</tr>
	</thead>
	<tbody>
	<?php
	$no=1;
	while ($result = mysqli_fetch_array($query)){
		$no++;
	?>
	<tr>
		<td><?php echo $result['Kd_Barang'];?></td> 
		<td><?php echo $result['Nama_Barang'];?></td> 
		<td><?php echo $result['Harga_Barang'];?></td>
	
	</tr>
	<?php }?>
	</tbody>
	</table>

