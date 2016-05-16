<?php
	session_start();
	include "../well_sys/koneksi.php";
	include "../well_sys/library.php";
	include "../well_sys/fungsi_input.php";

	$sid  = session_id();
	$id = $_GET['id'];
	$sql  = mysql_query("SELECT stok FROM produk WHERE id_produk='$id'");
	//echo $sql; exit;
	$s 	  = mysql_fetch_array($sql);
	$stok = $s['stok'];
	//$id_ukuran = $_POST['ukuran'];
	
	$sql = mysql_query("SELECT id_produk FROM orders_temp
				WHERE id_produk='$id' AND id_session='$sid'");
		$ketemu=mysql_num_rows($sql);
	if ($ketemu=="0")
		{
			// put the product in cart table
			mysql_query("INSERT INTO orders_temp (id_produk, jumlah, stok_temp, id_session, tgl_order_temp, jam_order_temp)
			VALUES ('$id', 1, '$stok','$sid', '$tgl_sekarang', '$jam_sekarang')");
		}
		else 
		{
			// update product quantity in cart table
			mysql_query("UPDATE orders_temp SET jumlah = jumlah + 1
					WHERE id_session ='$sid' AND id_produk='$id'");		
		}
	$sql1 = mysql_query("SELECT * FROM orders_temp, produk WHERE id_session='$sid' AND orders_temp.id_produk=produk.id_produk");
		$total=mysql_num_rows($sql1);

		header("location: cart.html");
?>
