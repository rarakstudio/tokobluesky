<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="robots" content="all">
		
	    <title>
			<?php  include "seo/title.php"; ?>
		</title>
		<meta name="keywords" content="<?php include "seo/keyword.php"; ?>">
		<meta name="description" content="<?php include "seo/deskripsi.php"; ?>">
		<meta http-equiv="Copyright" content="JogjaSite.com">
		<meta name="author" content="jogjasite">
		
	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/red.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="images/favicon.png">
		
		<!--sharethis-->
		<script type="text/javascript">var switchTo5x=true;</script>
		<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
		<script type="text/javascript">stLight.options({publisher: "5f70dc1f-94d9-457d-aa4e-3b435eddb913", doNotHash: false, doNotCopy: false, hashAddressBar: false});</script>
		

		<!--Sub Kategori Kota-->
		<script src="assets/js/jquery_kendaraan.js"></script>

		<script type="text/javascript">
			$(document).ready(function(){
			$("#jasa_pengiriman").change(function(){
			var kota=$("#jasa_pengiriman").val();
			$.ajax({
			url:"proses.php",
			data:"kota="+kota,
			success:function(data){
			$("#nama_kota").html(data);
			}})
			})
			});
		</script>
	</head>
    <body class="cnt-home">
		<!-- ============================================== HEADER ============================================== -->
		<header class="header-style-1">
			<?php
				include "well_inc/header.php";
			?>
			
			<?php
				include "well_inc/navigasi.php";
			?>
		</header>
		<!-- ============================================== HEADER : END ============================================== -->
		
		<?php
		 if($_GET['module']=='orders' || $_GET['module']=='checkout' || $_GET['module']=='addcart' || $_GET['module']=='konfirmasi' || $_GET['module']=='halamanstatis' || $_GET['module']=='download' || $_GET['module'] == 'cart'){
		
			include "well_inc/breadcrumb.php";
		?>
			<div class="body-content outer-top-bd">
				<div class="container">
				
					<div class="terms-conditions-page inner-bottom-sm">
						<div class="row" style="margin-left: 0%;margin-right: 1%;">
							<?php
								include "well_inc/mainContent.php";
							?>
						</div>
					</div>
					
				</div>
			</div>
			
		<?php
		 }elseif($_GET['module']=='blog' || $_GET['module']=='detail_blog' || $_GET['module']=='cari_blog' || $_GET['module']=='formkontak'){
				
			include "well_inc/breadcrumb.php";
		?>
			<div class="body-content outer-top-bd">
				<div class="container">	
					<?php
						include "well_inc/mainContent.php";
					?>
					<?php
						include "well_inc/brand.php";
					?>
				</div>
			</div>
		
		<?php
		 }elseif($_GET['module']=='all_produk' || $_GET['module']=='produk_detail'){
			 
			 include "well_inc/breadcrumb.php";
		?>
			<div class="body-content outer-top-xs">
				<div class='container'>
					<div class='row single-product outer-bottom-sm '>
					<!--<div class='row outer-bottom-sm'>-->
					<?php
						include "well_inc/sidebar.php";
						
						include "well_inc/mainContent.php";
					?>
					</div>
					<?php
						include "well_inc/brand.php";
					?>
				</div>
			</div>
		<?php
		 }else{
		?>
			<div class="body-content outer-top-xs" id="top-banner-and-menu">
				<div class="container">
					<div class="row">
						<!-- ============================================== SIDEBAR ============================================== -->	
						<?php
							include "well_inc/sidebar.php";
						?>
						<!-- ============================================== SIDEBAR : END ============================================== -->

						<!-- ============================================== CONTENT ============================================== -->
						<?php
							include "well_inc/mainContent.php";
						?>
						<!-- ============================================== CONTENT : END ============================================== -->
					</div><!-- /.row -->
				
					<!-- ============================================== BRANDS CAROUSEL ============================================== -->
					<div id="brands-carousel" class="logo-slider wow fadeInUp">
						<?php
							include "well_inc/brand.php";
						?>
					</div><!-- /.logo-slider -->
					<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
				
				</div><!-- /.container -->
			</div><!-- /#top-banner-and-menu -->
		<?php
		 }
		?>
		<!-- ============================================================= FOOTER ============================================================= -->
		<footer id="footer" class="footer color-bg">
			<?php
				include "well_inc/footer.php";
			?>
		</footer>
		<!-- ============================================================= FOOTER : END============================================================= -->
		<script src="assets/js/jquery-1.11.1.min.js"></script>
		
		<script src="assets/js/bootstrap.min.js"></script>
		
		<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		
		<script src="assets/js/echo.min.js"></script>
		<script src="assets/js/jquery.easing-1.3.min.js"></script>
		<script src="assets/js/bootstrap-slider.min.js"></script>
		<script src="assets/js/jquery.rateit.min.js"></script>
		<script type="text/javascript" src="assets/js/lightbox.min.js"></script>
		<script src="assets/js/bootstrap-select.min.js"></script>
		<script src="assets/js/wow.min.js"></script>
		<script src="assets/js/scripts.js"></script>
		
		<!--Data Table-->
		<script src="media/js/jquery.dataTables.js" type="text/javascript"></script>
		<style type="text/css">
			@import "media/css/demo_table_jui.css";
			@import "media/themes/ui-lightness/jquery-ui-1.8.4.custom.css";
		</style>
			
		<style>
			*{
			   font-family: 'Maven Pro', sans-serif;
			 }
		</style>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function(){
				$('#datatables').dataTable({
					"sPaginationType":"full_numbers",
					"aaSorting":[[2, "desc"]],
					"bJQueryUI":true
				 });
			 })  
		</script>
		<!-- For demo purposes – can be removed on production -->
		
		<script src="switchstylesheet/switchstylesheet.js"></script>
		
		<script>
			$(document).ready(function(){ 
				$(".changecolor").switchstylesheet( { seperator:"color"} );
				$('.show-theme-options').click(function(){
					$(this).parent().toggleClass('open');
					return false;
				});
			});

			$(window).bind("load", function() {
			   $('.show-theme-options').delay(2000).trigger('click');
			});
		</script>
		<!-- For demo purposes – can be removed on production : End -->
		
		<!-- SORTING -->
		<script type="text/javascript">
			function prosesPrice() { 
			
			var sort = $('select#sort4 option:selected').val();
			var id = $('.id').val();
		 
			$.ajax( {
				type: 'POST',
				url: 'well_cont/sorting4.php',
				data: {id:id, sort4:sort}, 

				success: function(data) {
					$('#ajaxx').html(data);
				}
			} );
		}
		</script>
		
		

	</body>
</html>