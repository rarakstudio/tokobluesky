	<!-- ============================================== TOP MENU ============================================== -->
	<div class="top-bar animate-dropdown">
		<div class="container">
			<div class="header-top-inner">
				<div class="cnt-account" style="margin-left: -1%;">
					<ul class="list-unstyled">
						<!--
						<li><a href="#"><i class="icon fa fa-user"></i>My Account</a></li>
						<li><a href="#"><i class="icon fa fa-sign-in"></i>Login</a></li>
						<li><a href="#"><i class="icon fa fa-heart"></i>Wishlist</a></li>
						-->
						<?php
							$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='12'");
							$r    = mysql_fetch_array($sql);
						?>
						<li><a href="#"><i class="icon fa fa-phone"></i><?php echo "$r[static_content]"; ?></a></li>
						
						<?php
							$sqls  = mysql_query("SELECT * FROM modul WHERE id_modul='18'");
							$rs    = mysql_fetch_array($sqls);
						?>
						<li><a href="#"><i class="icon fa fa-envelope"></i><?php echo "$rs[static_content]"; ?></a></li>
					</ul>
				</div><!-- /.cnt-account -->

				<div class="cnt-block">
					<ul class="list-unstyled list-inline">
							<li><a href="contact-us.html" style="margin-left: -4%;"><i class="icon fa fa-sign-in"></i> Contact Us</a></li>
					</ul><!-- /.list-unstyled -->
				</div><!-- /.cnt-cart -->
				<div class="clearfix"></div>
			</div><!-- /.header-top-inner -->
		</div><!-- /.container -->
	</div><!-- /.header-top -->
	<!-- ============================================== TOP MENU : END ============================================== -->
	
	<div class="main-header" style="background-color: rgba(56, 153, 222, 0.27);">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<!-- ============================================================= LOGO ============================================================= -->
					<div class="logo">
						<a href="tokobluesky-communication">
							
							<img src="assets/images/logo.png" alt="">

						</a>
					</div><!-- /.logo -->
					<!-- ============================================================= LOGO : END ============================================================= -->				
				</div><!-- /.logo-holder -->

				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
					
					<!-- ============================================================= SEARCH AREA ============================================================= -->
					
					<div class="search-area">
						<?php include "well_cont/search.php" ?>
					</div><!-- /.search-area -->
					<!-- ============================================================= SEARCH AREA : END ============================================================= -->				
				</div><!-- /.top-search-holder -->

			</div><!-- /.row -->

		</div><!-- /.container -->

	</div><!-- /.main-header -->