<?php
include '../auth/koneksi.php';


$query = mysqli_query($mysqli,"SELECT * from tb_promo");




?>

<center>
<h2> Data Promo</h2>
<table class= "table table-bordered table-responsive" width="100%">

	<thead class="bg-info">
	<tr>
	<th>Kd_Promo</th> <th>Jenis_Promo</th> <th>Periode</th> 
	</tr>
	</thead>
	<tbody>
	<?php
	$no=1;
	while ($result = mysqli_fetch_array($query)){
		$no++;
	?>
	<tr>
		<td><?php echo $result['Kd_Promo'];?></td> 
		<td><?php echo $result['Jenis_Promo'];?></td> 
		<td><?php echo $result['Periode'];?></td>
	
	</tr>
	<?php }?>
	</tbody>
	</table>

