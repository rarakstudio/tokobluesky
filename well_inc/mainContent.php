<?php 
if($_GET['module']=='home') { 
	include("well_cont/home.php");
}

//mod statis
elseif($_GET['module']=='halamanstatis') {
	
	$sql=mysql_query("SELECT * FROM modul WHERE id_modul='$_GET[id]' ");
	$s=mysql_fetch_array($sql);

?>		
		<div class="col-md-12 terms-conditions">
			<h2><?php echo "$s[nama_modul]"; ?></h2>
			<div class="inner-top-sm" style="padding-top: 25px;">
				<p>
					<?php
						echo "$s[static_content]";
					?>
				</p>
			</div>
		</div>
<?php
}

//////////////////////////////////////////////////////////////// BLOG
elseif($_GET['module']=='blog') {
	include "well_cont/blog.php";
	//echo "Hello";
}

//mod detail blog
elseif($_GET['module']=='detail_blog') {
	include "well_cont/blog_detail.php";
}

//mod search blog
elseif($_GET['module']=='cari_blog') {
	include "well_cont/blog_search.php";
}

////////////////////////////////////////////////////////////////// PRODUK
elseif($_GET['module']=='all_produk') {
	include "well_cont/product_all.php";
}

elseif($_GET['module']=='produk_detail') {
	include "well_cont/produk_detail.php";
}
////////////////////////////////////////////////////////////////// KONTAK
elseif($_GET['module']=='formkontak') {
	include("well_cont/form_kontak.php"); 
}

elseif($_GET['module']=='kontak') {
	include("well_cont/kontak.php"); 
}

elseif($_GET['module']=='allGallery') {
	include("joinc/album.php"); 
}

elseif($_GET['module']=='detailGallery') {
	include("joinc/album_galeri.php"); 
}
////////////////////////////////////////////////////////////// KATEGORI & SUBKATEGORI
elseif($_GET['module']=='kategori_prod') {
	include("well_cont/kategori_produk.php"); 
}

elseif($_GET['module']=='subkategori_prod') {
	include("well_cont/subkategori_produk.php"); 
}

elseif($_GET['module']=='detail_brand') {
	include("well_cont/detail_brand.php"); 
}
//////////////////////////////////////////////////////////////KONFIRMASI BAYAR
elseif($_GET['module']=='konfirmasi') {
	include("well_cont/konfirmasi.php"); 
}
////////////////////////////////////////////////////////////// DOWNLOAD
elseif($_GET['module']=='download') {
	include("well_cont/download.php"); 
}
////////////////////////////////////////////////////////////// PENCARIAN BY KATEGORI
elseif($_GET['module']=='form_cari') {
	include("well_cont/hasil_cari.php"); 
}
/////////////////////////////////////////////////////////// ADDCART

elseif($_GET['module']=='addcart') {
	include("well_cont/addcart.php"); 
	//include("well_cont/download.php"); 
}
////////////////////////////////////////////////////////// CART
elseif($_GET['module']=='cart') {
	include("well_cont/cart.php"); 
}

elseif($_GET['module']=='checkout') {
	include("well_cont/checkout.php"); 
}

elseif($_GET['module']=='orders') {
	include("well_cont/orders.php"); 
}
//////////////////////////////////////////////////////////konfirmasi
elseif($_GET['module']=='confirm') {
	include("well_cont/addconf.php"); 
}
?>