<?php
include '../auth/koneksi.php';


$query = mysqli_query($mysqli,"SELECT * FROM `tb_diskon` JOIN tb_member ON tb_diskon.IdMember = tb_member.IdMember");




?>

<center>
<h2> Diskon Member</h2>
<table class= "table table-bordered table-responsive" width="100%">

	<thead class="bg-info">
	<tr>
	<th>No</th> <th>IdMember</th> <th>Nama</th> <th>Kd_Barang</th><th>Kd_Promo</th><th>Alamat</th><th>NoKtp</th><th>Opsi</th>
	</tr>
	</thead>
	<tbody>
	<?php
	$no=1;
	while ($result = mysqli_fetch_array($query)){
		$no++;
	?>
	<tr>
		<td><?php echo $result['No'];?></td> 
		<td><?php echo $result['IdMember'];?></td> 
		<td><?php echo $result['Nama'];?></td>
		<td><?php echo $result['Kd_Barang'];?></td>
		
		<td><?php echo $result['Kd_Promo'];?></td>
	
		<td><?php echo $result['Alamat'];?></td>
		<td><?php echo $result['NoKtp'];?></td>
		<td>
								<a href="tambah-data.php" class="btn btn-btn-sn btn-success">Edit</a>
								<div class="btn-group" role="group" aria-label="Basic mixed styles example">
											<a href="delete_diskon.php?id=<?php echo $result['No'] ?>">
												<button type="button" class="btn btn-danger">Delete</button></a>
										</div>
						</td>
	</tr>
	<?php }?>
	</tbody>
	</table>
