<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
  else{
  include "../../../well_sys/koneksi.php";
  include "../../../well_sys/library.php";
  include "../../../well_sys/fungsi_thumb.php";
  include "../../../well_sys/fungsi_seo.php";


$module=$_GET[module];
$act=$_GET[act];

// Hapus bank
if ($module=='bank' AND $act=='hapus'){

  $id= $_GET['id'];
  

	mysql_query("DELETE FROM bank WHERE id_bank='$id'");
	
	
	header('location:../../page.php?module='.$module);
}

// Input bank
elseif ($module=='bank' AND $act=='input'){

    mysql_query("INSERT INTO bank(nama_bank,
                                    no_rekening,
                                    nama) 
                            VALUES($_POST[nama_bank]',
                                   '$_POST[no_rekening]',
                                   '$_POST[pemilik]')");

  header('location:../../page.php?module='.$module);
}

// Update banner
elseif ($module=='bank' AND $act=='update'){

    mysql_query("UPDATE bank SET nama_bank     = '$_POST[nama_bank]',
                                   no_rekening       = '$_POST[no_rekening]',
                                   nama       = '$_POST[pemilik]'                                   
                             WHERE id_bank = '$_POST[id]'");
 
  header('location:../../page.php?module='.$module);
}
}
?>
