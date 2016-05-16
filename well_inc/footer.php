	<div class="links-social inner-top-sm" style="background-color: rgb(201, 227, 246); margin-left: -10%; margin-right: -16%;">
		<div class="container" style="margin-top: -4%;">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-3">
					<!-- ============================================================= CONTACT INFO ============================================================= -->
					<div class="contact-info">
						<div class="footer-logo">
							<div class="logo" style="margin-left: -14%;">
								<a href="tokobluesky-communication">
									<img src="assets/images/logo.png" alt="">
								</a>
							</div><!-- /.logo -->
						</div><!-- /.footer-logo -->

						<div class="module-body m-t-20">
							<div class="social-icons">
								<a href="#" class='active' style="background-color: #3B5998;"><i class="icon fa fa-facebook"></i></a>
								<a href="#" class='active' style="background-color: #28A9E0;"><i class="icon fa fa-twitter"></i></a>
								<a href="#" class='active' style="background-color: #1D8CB5;"><i class="icon fa fa-linkedin"></i></a>
								<a href="#" class='active' style="background-color: #FF9900;"><i class="icon fa fa-rss"></i></a>
								<a href="#" class='active' style="background-color: #CB2027;"><i class="icon fa fa-pinterest"></i></a>
							</div><!-- /.social-icons -->
						</div><!-- /.module-body -->

					</div><!-- /.contact-info -->
					<!-- ============================================================= CONTACT INFO : END ============================================================= -->
				</div><!-- /.col -->

				<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= CONTACT TIMING============================================================= -->
					<div class="contact-timing">
						<div class="module-heading">
							<h4 class="module-title">help & support</h4>
						</div><!-- /.module-heading -->

						<div class="module-body outer-top-xs">
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr><td><a href="cara-beli-13.html">Cara Beli</a></td></tr>
										<tr><td><a href="download.html">Donwload</a></td></tr>
										<tr><td><a href="profile-1.html">Profil</a></td></tr>
										<tr><td><a href="konfirmasi.html">Konfirmasi Bayar</a></td></tr>
									</tbody>
								</table>
							</div><!-- /.table-responsive -->
						</div><!-- /.module-body -->
					</div><!-- /.contact-timing -->
					<!-- ============================================================= CONTACT TIMING : END ============================================================= -->            	
				</div><!-- /.col -->
				
            	<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= INFORMATION============================================================= -->
					<div class="contact-information">
						<div class="module-heading">
							<h4 class="module-title">information</h4>
						</div><!-- /.module-heading -->

						<div class="module-body outer-top-xs">
							<ul class="toggle-footer" style="">
								<li class="media">
									<div class="pull-left">
										 <span class="icon fa-stack fa-lg">
										  <i class="fa fa-circle fa-stack-2x"></i>
										  <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
										</span>
									</div>
									<div class="media-body">
										<?php
											$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='6'");
											$r    = mysql_fetch_array($sql);
												echo "$r[static_content]";
										?>
									</div>
								</li>

								  <li class="media">
									<div class="pull-left">
										 <span class="icon fa-stack fa-lg">
										  <i class="fa fa-circle fa-stack-2x"></i>
										  <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
										</span>
									</div>
									<div class="media-body">
										<?php
											$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='12'");
											$r    = mysql_fetch_array($sql);
												echo "$r[static_content]";
										?>
									</div>
								</li>

								  <li class="media">
									<div class="pull-left">
										 <span class="icon fa-stack fa-lg">
										  <i class="fa fa-circle fa-stack-2x"></i>
										  <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
										</span>
									</div>
									<div class="media-body">
										<?php
											$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='18'");
											$r    = mysql_fetch_array($sql);
										?>
										<span><a href="#"><?php echo "$r[static_content]"; ?></a></span>
									</div>
								</li>
								  
								</ul>
						</div><!-- /.module-body -->
					</div><!-- /.contact-timing -->
					<!-- ============================================================= INFORMATION : END ============================================================= -->            	
				</div><!-- /.col -->
				
				
            	<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= CONTACT TIMING============================================================= -->
					<div class="contact-timing">
						<div class="module-heading">
							<h4 class="module-title">opening time</h4>
						</div><!-- /.module-heading -->

						<div class="module-body outer-top-xs">
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<?php
											$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='19'");
											$r    = mysql_fetch_array($sql);
												echo "$r[static_content]";
										?>
									</tbody>
								</table>
							</div><!-- /.table-responsive -->
							<p class='contact-number'>
								Hot Line:
								<?php
									$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='17'");
									$r    = mysql_fetch_array($sql);
										echo "$r[static_content]";
								?>
							</p>
						</div><!-- /.module-body -->
					</div><!-- /.contact-timing -->
					<!-- ============================================================= CONTACT TIMING : END ============================================================= -->            	
				</div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.links-social -->
	
    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright" style="color: #fff;">
                   Copyright © 2016
                    <a href="index.html">Tokobluesky.com</a>
                    - Develop by <a href="http://jogjasite.com/">JogjaSite</a><br />
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="clearfix payment-methods">
                    <ul>
                        <li><?php include("well_cont/statistik.php"); ?></li>
                    </ul>
                </div><!-- /.payment-methods -->
            </div>
        </div>
    </div>