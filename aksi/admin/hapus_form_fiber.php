<?php
$id=$_GET['id'];
require_once('../../koneksi/koneksi.php');

	$query=mysqli_query($config,"DELETE FROM tb_form_fiber WHERE id_form='$id'");
	if($query){
		$query2 = mysqli_query($config,"DELETE FROM tb_tempat_fiber WHERE id_form='$id'");
		$kmz = mysqli_query($config,"SELECT * FROM tb_file_fiber WHERE id_form = '$id' AND id_tipe=1");
		$xls = mysqli_query($config,"SELECT * FROM tb_file_fiber WHERE id_form = '$id' AND id_tipe=2");
		$data1= mysqli_fetch_array($kmz);
		$data2 = mysqli_fecth_array($xls);
		$directori1 = '../'.$data1['file'];
		$directori2 = '../'.$data2['file'];

		$query3 = mysqli_query($config,"DELETE FROM tb_file_fiber WHERE id_form='$id_form'");
		if($query3){
			unlink($directori1);
			unlink($directori2);
			echo '<script>alert("Data Berhasil Dihapus");window.location.href="../../admin/pengajuan_fiber.php";</script>';
		//header("location=../../admin/pengajuan_akun.php");
		}else{
			echo '<script>alert("Data Gagal Dihapus");window.location.href="../../admin/pengajuan_fiber.php";</script>';
		}
	}else{
		echo 'gagal';
	}
?>