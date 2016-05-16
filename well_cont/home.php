<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">

	<!-- ========================================== SECTION – HERO ========================================= -->
	<div id="hero">
		<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
			<?php
				$slide	= mysql_query("SELECT * FROM slide order by id_slide DESC");
				while($s	= mysql_fetch_array($slide)){
			?>
			
			<div class="item"> <!-- style="background-image: url(<?php //echo "well_img/slide/$s[gambar]"; ?>);"> -->
			<a href="<?php echo "$s[link]"; ?>"><img src="<?php echo "well_img/slide/$s[gambar]" ?>"></a>

				<div class="container-fluid">
					<div class="caption bg-color vertical-center text-left">
						<div class="big-text fadeInDown-1">
							<?php echo "$s[judul]"; ?>
						</div>

						<!-- <div class="excerpt fadeInDown-2 hidden-xs">
							<span><?php //echo "$s[tagline]"; ?></span>
						</div> -->
						<!-- <div class="button-holder fadeInDown-3">
							<a href="<?php //echo "$s[link]"; ?>" class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop Now</a>
						</div> -->
					</div><!-- /.caption -->
				</div><!-- /.container-fluid -->
			</div><!-- /.item -->
			<?php
			}
			?>
		</div><!-- /.owl-carousel -->
	</div>
			
	<!-- ========================================= SECTION – HERO : END ========================================= -->	

	<!-- ============================================== INFO BOXES ============================================== -->
	<div class="info-boxes wow fadeInUp">
		<div class="info-boxes-inner">
			<div class="row">
				<?php 
					$mb=mysql_fetch_array(mysql_query("SELECT * FROM DESK where id_desk='1'"));
				?>
				<div class="col-md-6 col-sm-4 col-lg-4">
					<div class="info-box">
						<div class="row">
							<div class="col-xs-2">
								 <i class="icon fa fa-dollar"></i>
							</div>
							<div class="col-xs-10">
								<h4 class="info-box-heading green"><?php echo $mb['judul']; ?></h4>
							</div>
						</div>	
						<h6 class="text"><?php echo $mb['deskripsi']; ?></h6>
					</div>
				</div><!-- .col -->
				
				<?php 
					$fs=mysql_fetch_array(mysql_query("SELECT * FROM DESK where id_desk='2'"));
				?>
				<div class="hidden-md col-sm-4 col-lg-4">
					<div class="info-box">
						<div class="row">
							<div class="col-xs-2">
								<i class="icon fa fa-truck"></i>
							</div>
							<div class="col-xs-10">
								<h4 class="info-box-heading orange"><?php echo $fs['judul']; ?></h4>
							</div>
						</div>
						<h6 class="text"><?php echo $fs['deskripsi']; ?></h6>	
					</div>
				</div><!-- .col -->

				<?php 
					$ss=mysql_fetch_array(mysql_query("SELECT * FROM DESK where id_desk='3'"));
				?>
				<div class="col-md-6 col-sm-4 col-lg-4">
					<div class="info-box">
						<div class="row">
							<div class="col-xs-2">
								<i class="icon fa fa-gift"></i>
							</div>
							<div class="col-xs-10">
								<h4 class="info-box-heading red"><?php echo $ss['judul']; ?></h4>
							</div>
						</div>
						<h6 class="text"><?php echo $ss['deskripsi']; ?></h6>	
					</div>
				</div><!-- .col -->
			</div><!-- /.row -->
		</div><!-- /.info-boxes-inner -->
		
	</div><!-- /.info-boxes -->
	<!-- ============================================== INFO BOXES : END ============================================== -->
	<!-- ============================================== SCROLL TABS ============================================== -->
	<div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
		<div class="more-info-tab clearfix ">
		   <h3 class="new-product-title pull-left">New Products</h3>
			<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
				<!-- <li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">All</a></li>
				<li><a data-transition-type="backSlide" href="#new" data-toggle="tab">new</a></li>
				<li><a data-transition-type="backSlide" href="#sale" data-toggle="tab">sale</a></li>
				<li><a data-transition-type="backSlide" href="#hot" data-toggle="tab">hot</a></li> -->
			</ul><!-- /.nav-tabs -->
		</div>

		<div class="tab-content outer-top-xs">
			
			<div class="tab-pane in active" id="all">			
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
					<?php
						$produk = mysql_query("SELECT * FROM produk where tampil_depan = 'Y' ORDER BY id_produk DESC limit 16");
						while($p = mysql_fetch_array($produk)){
						$harga       = number_format(($p['harga']),0,",",".");
						$disc        = ($p['discount']/100)*$p['harga'];
						$hargadisc   = number_format(($p['harga']-$disc),0,",",".");
				
					?>
							<div class="item item-carousel">
								<div class="products">
									
									<div class="product">		
										<div class="product-image">
											<div class="image">
												<a href="<?php echo "product-$p[id_produk]-$p[produk_seo].html"; ?>">
													<img  src="assets/images/blank.gif" data-echo="<?php echo "well_img/produk/$p[gambar]"; ?>" alt="" style="width: 90%;">
												</a>
											</div><!-- /.image -->
											<?php if($p['special'] == 'new'){?>
												<div class="tag new">
													<span>new</span>
												</div>
											<?php }elseif($p['special'] == 'promo'){?>
												<div class="tag sale">
													<span>sale</span>
												</div>
											<?php }elseif($p['special'] == 'hot'){?>
												<div class="tag hot">
													<span>hot</span>
												</div>
											<?php } ?>
										</div><!-- /.product-image -->
										
										<div class="product-info text-center">
											<h3 class="name" style="font-size: 17px;"><a href="<?php echo "product-$p[id_produk]-$p[produk_seo].html"; ?>"><?php echo "$p[nama_produk]"; ?></a></h3>
										</div><!-- /.product-info -->
										
										<!-- PRICE -->
										<div class="product-info text-center">
										<h3 class="name" style="margin-top: -2%;font-size: 20px;">
										<?php
										if($p['discount'] != 0){
										?>
		                                    <span class="price">Rp. <?php echo "$hargadisc"; ?>,-</span>
											<!-- <span class="price-strike">Rp. <?php //echo "$harga"; ?></span> -->
		                                <?php
										}else{
										?>	
											<span class="price">Rp. <?php echo "$harga"; ?>,-</span>
										<?php	
										}
										?>
										</h3>
										</div>
										<!-- PRICE -->
										<!-- cart start -->
										<div class="product-info text-center">
											<div class="action">
												<ul class="list-unstyled">
													<li class="add-cart-button btn-group">
													<!-- 	<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
															<i class="fa fa-shopping-cart"></i>													
														</button> -->
																	<a href="<?php echo 'media.php?module=addcart&id='.$p['id_produk']; ?>" class="btn btn-primary icon">
																		<i class="fa fa-shopping-cart"></i></a> 
														<a href="<?php echo "product-$p[id_produk]-$p[produk_seo].html"; ?>">
															<button class="btn btn-primary" type="button">Detail produk</button>
														</a>
													</li>
												   
												</ul>
											</div><!-- /.action -->
										</div><!-- /.cart -->


									</div><!-- /.product -->
						  
								</div><!-- /.products -->
							</div><!-- /.item -->
					<?php
						}
					?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->

			<div class="tab-pane" id="new">
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
						<?php
							$new = mysql_query("SELECT * FROM produk where special = 'new' AND tampil_depan = 'Y' ORDER BY id_produk DESC limit 8");
							while($n = mysql_fetch_array($new)){
							$harga       = number_format(($p['harga']),0,",",".");
							$disc        = ($p['discount']/100)*$p['harga'];
							$hargadisc   = number_format(($p['harga']-$disc),0,",",".");
						?>
								<div class="item item-carousel">
									<div class="products">
										
										<div class="product">		
											<div class="product-image">
												<div class="image">
													<a href="<?php echo "product-$n[id_produk]-$n[produk_seo].html"; ?>">
														<img  src="assets/images/blank.gif" data-echo="<?php echo "well_img/produk/$n[gambar]"; ?>" alt="" style="width: 90%;">
													</a>
												</div><!-- /.image -->
												<div class="tag new">
													<span>new</span>
												</div>
											</div><!-- /.product-image -->
												
											<div class="product-info text-left">
												<h3 class="name">
													<a href="<?php echo "product-$n[id_produk]-$n[produk_seo].html"; ?>">
														<?php echo "$n[nama_produk]"; ?>
													</a>
												</h3>
											</div><!-- /.product-info -->
											
											<div class="cart clearfix animate-effect">
												<div class="action">
													<ul class="list-unstyled">
														<li class="add-cart-button btn-group">
														<!-- 	<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
																<i class="fa fa-shopping-cart"></i>													
															</button> -->
															<a href="<?php echo 'media.php?module=addcart&id='.$n['id_produk']; ?>" class="btn btn-primary icon">
															<i class="fa fa-shopping-cart"></i></a> 
															<a href="<?php echo "product-$n[id_produk]-$n[produk_seo].html"; ?>">
																<button class="btn btn-primary" type="button">Detail produk</button>					
															</a>
														</li>
													</ul>
												</div><!-- /.action -->
											</div><!-- /.cart -->
											
										</div><!-- /.product -->
							  
									</div><!-- /.products -->
								</div><!-- /.item -->
						<?php
							}
						?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->

			<div class="tab-pane" id="hot">
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
						<?php
							$hot = mysql_query("SELECT * FROM produk where special = 'hot' AND tampil_depan = 'y' ORDER BY id_produk DESC limit 8");
							while($h = mysql_fetch_array($hot)){
						?>
								<div class="item item-carousel">
									<div class="products">
										
										<div class="product">		
											<div class="product-image">
												<div class="image">
													<a href="<?php echo "product-$h[id_produk]-$h[produk_seo].html"; ?>">
														<img  src="assets/images/blank.gif" data-echo="<?php echo "well_img/produk/$h[gambar]"; ?>" alt="" style="width: 90%;">
													</a>
												</div><!-- /.image -->
												<div class="tag hot">
													<span>hot</span>
												</div>
											</div><!-- /.product-image -->
												
											<div class="product-info text-left">
												<h3 class="name"><a href="<?php echo "product-$h[id_produk]-$h[produk_seo].html"; ?>"><?php echo "$h[nama_produk]"; ?></a></h3>
											</div><!-- /.product-info -->
											
											<div class="cart clearfix animate-effect">
												<div class="action">
													<ul class="list-unstyled">
														<li class="add-cart-button btn-group">
															<!-- <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
																<i class="fa fa-shopping-cart"></i>													
															</button> -->
																		<a href="<?php echo 'media.php?module=addcart&id='.$h['id_produk']; ?>" class="btn btn-primary icon">
																		<i class="fa fa-shopping-cart"></i></a> 
															<a href="<?php echo "product-$h[id_produk]-$h[produk_seo].html"; ?>">
																<button class="btn btn-primary" type="button">Detail produk</button>					
															</a>
														</li>
													</ul>
												</div><!-- /.action -->
											</div><!-- /.cart -->
											
										</div><!-- /.product -->
							  
									</div><!-- /.products -->
								</div><!-- /.item -->
						<?php
							}
						?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->
			
			<div class="tab-pane" id="sale">
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
						<?php
							$promo = mysql_query("SELECT * FROM produk where special = 'promo' AND tampil_depan = 'y' ORDER BY id_produk DESC limit 8");
							while($pr = mysql_fetch_array($promo)){
						?>
								<div class="item item-carousel">
									<div class="products">
										
										<div class="product">		
											<div class="product-image">
												<div class="image">
													<a href="<?php echo "product-$pr[id_produk]-$pr[produk_seo].html"; ?>">
														<img  src="assets/images/blank.gif" data-echo="<?php echo "well_img/produk/$pr[gambar]"; ?>" alt="" style="width: 90%;">
													</a>
												</div><!-- /.image -->
												<div class="tag sale">
													<span>sale</span>
												</div>
											</div><!-- /.product-image -->
												
											<div class="product-info text-left">
												<h3 class="name"><a href="<?php echo "product-$pr[id_produk]-$pr[produk_seo].html"; ?>"><?php echo "$pr[nama_produk]"; ?></a></h3>
											</div><!-- /.product-info -->
											
											<div class="cart clearfix animate-effect">
												<div class="action">
													<ul class="list-unstyled">
														<li class="add-cart-button btn-group">
															<!-- <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
																<i class="fa fa-shopping-cart"></i>													
															</button> -->
															<a href="<?php echo 'media.php?module=addcart&id='.$pr['id_produk']; ?>" class="btn btn-primary icon">
															<i class="fa fa-shopping-cart"></i></a> 
															<a href="<?php echo "product-$pr[id_produk]-$pr[produk_seo].html"; ?>">
																<button class="btn btn-primary" type="button">Detail produk</button>					
															</a>
														</li>
													</ul>
												</div><!-- /.action -->
											</div><!-- /.cart -->
											
										</div><!-- /.product -->
							  
									</div><!-- /.products -->
								</div><!-- /.item -->
						<?php
							}
						?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->
			
		</div><!-- /.tab-content -->
	</div><!-- /.scroll-tabs -->
	<!-- ============================================== SCROLL TABS : END ============================================== -->
	
	<!-- ============================================== WIDE PRODUCTS ============================================== -->
	<!-- <div class="wide-banners wow fadeInUp outer-bottom-vs">
		<div class="row">
			
			<?php
			//$banner = mysql_query("SELECT * FROM banner WHERE id_banner='1'");
				//$g=mysql_fetch_array($banner);
			?>
			<div class="col-md-7">
				<div class="wide-banner cnt-strip">
					<div class="image">
						<img class="img-responsive" data-echo="<?php// echo "well_img/banner/$g[gambar]"; ?>" src="assets/images/blank.gif" alt="">
					</div>	
					<div class="strip">
						<div class="strip-inner">
							<h2><?php //echo "$g[judul]"; ?></h2>
						</div>	
					</div>
				</div>
			</div>
			
			<?php
			//$banner2 = mysql_query("SELECT * FROM banner WHERE id_banner='2'");
			//	$gg=mysql_fetch_array($banner2);
			?>
			<div class="col-md-5">
				<div class="wide-banner cnt-strip">
					<div class="image">
						<img class="img-responsive" data-echo="<?php //echo "well_img/banner/$gg[gambar]"; ?>" src="assets/images/blank.gif" alt="">
					</div>	
					<div class="strip">
						<div class="strip-inner">
							<h2><?php //echo "$gg[judul]"; ?></h2>
						</div>	
					</div>
				</div>
			</div>
			
		</div>
	</div> -->

	<!-- ============================================== WIDE PRODUCTS : END ============================================== -->



	<!-- ============================================== FEATURED PRODUCTS ============================================== -->
	<section class="section featured-product wow fadeInUp">
		<h3 class="section-title"  style="margin-top: 9%;">Featured products</h3>
		<div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
			<?php
				$featured = mysql_query("SELECT * FROM produk where featured = 'Y' AND tampil_depan = 'y' ORDER BY id_produk DESC limit 8");
				while($f = mysql_fetch_array($featured)){
				$harga       = number_format(($f['harga']),0,",",".");
				$disc        = ($f['discount']/100)*$f['harga'];
				$hargadisc   = number_format(($f['harga']-$disc),0,",",".");

			?>
			
					<div class="item item-carousel">
						<div class="products">
							
							<div class="product">		
								<div class="product-image">
									<div class="image">
										<a href="<?php echo "product-$f[id_produk]-$f[produk_seo].html"; ?>">
											<img  src="assets/images/blank.gif" data-echo="<?php echo "well_img/produk/$f[gambar]"; ?>" alt=""  style="width: 90%;">
										</a>
									</div><!-- /.image -->			
									<?php if($f['special'] == 'new'){?>
										<div class="tag new">
											<span>new</span>
										</div>
									<?php }elseif($f['special'] == 'promo'){?>
										<div class="tag sale">
											<span>sale</span>
										</div>
									<?php }elseif($f['special'] == 'hot'){?>
										<div class="tag hot">
											<span>hot</span>
										</div>
									<?php } ?>
									
								</div><!-- /.product-image -->
									
								
								<div class="product-info text-center">
									<h3 class="name"><a href="<?php echo "product-$f[id_produk]-$f[produk_seo].html"; ?>"><?php echo "$f[nama_produk]"; ?></a></h3>
								</div><!-- /.product-info -->

								<div class="product-info text-center">
										<h3 class="name" style="margin-top: -2%;font-size: 20px;">
										<?php
										if($f['discount'] != 0){
										?>
		                                    <span class="price">Rp. <?php echo "$hargadisc"; ?>,-</span>
											<!-- <span class="price-strike">Rp. <?php //echo "$harga"; ?></span> -->
		                                <?php
										}else{
										?>	
											<span class="price">Rp. <?php echo "$harga"; ?>,-</span>
										<?php	
										}
										?>
										</h3>
										</div>

								<div class="product-info text-center">
									<div class="action">
										<ul class="list-unstyled">
											<li class="add-cart-button btn-group">
											<!-- 	<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
													<i class="fa fa-shopping-cart"></i>													
												</button> -->
												<a href="<?php echo 'media.php?module=addcart&id='.$p['id_produk']; ?>" class="btn btn-primary icon">
												<i class="fa fa-shopping-cart"></i></a> 
												<a href="<?php echo "product-$f[id_produk]-$f[produk_seo].html"; ?>">
													<button class="btn btn-primary" type="button">Detail produk</button>				
												</a>
											</li>
											
										</ul>
									</div><!-- /.action -->
								</div><!-- /.cart -->

							</div><!-- /.product -->
				  
						</div><!-- /.products -->
					</div><!-- /.item -->
			<?php
				}
			?>
		</div><!-- /.home-owl-carousel -->
	</section><!-- /.section -->
	<!-- ============================================== FEATURED PRODUCTS : END ============================================== -->


	
	<!-- ============================================== WIDE PRODUCTS ============================================== -->
	<div class="wide-banners wow fadeInUp outer-bottom-vs">
		<div class="row">
			<?php
			$banner3 = mysql_query("SELECT * FROM banner WHERE id_banner='3'");
				$ggg=mysql_fetch_array($banner3);
			?>
			<div class="col-md-12">
				<div class="wide-banner cnt-strip">
					<div class="image">
						<img class="img-responsive" data-echo="<?php echo "well_img/banner/$ggg[gambar]"; ?>" src="assets/images/blank.gif" alt="">
					</div>	
					<div class="strip strip-text">
						<div class="strip-inner">
							<h2 class="text-right"><?php echo "$ggg[judul]"; ?><br>
						</div>	
					</div>
					<div class="new-label">
						<div class="text">NEW</div>
					</div>
				</div>
			</div>

		</div>
	</div><!-- /.wide-banners -->
	<!-- ============================================== WIDE PRODUCTS : END ============================================== -->
	<!-- ============================================== BEST SELLER ============================================== -->

	<div class="sidebar-widget wow fadeInUp outer-bottom-vs">
		<h3 class="section-title">Best seller</h3>
		<div class="sidebar-widget-body outer-top-xs">
			<div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
				<?php
				$no = 1;
				$best_seller = mysql_query("SELECT * FROM produk where best = 'Y' AND tampil_depan = 'y' ORDER BY id_produk DESC limit 16");
				while($bs = mysql_fetch_array($best_seller))
				{
					if($no % 2 == 1)
					{
				?>
					<div class="item">
						<div class="products best-product">
				<?php
					}
				$harga       = number_format(($bs['harga']),0,",",".");
				$disc        = ($bs['discount']/100)*$bs['harga'];
				$hargadisc   = number_format(($bs['harga']-$disc),0,",",".");
				?>
							<div class="product">
								<div class="product-micro">
									<div class="row product-micro-row">
										
										<div class="col col-xs-5">
											<div class="product-image">
												<div class="image">
													<a href="<?php echo "well_img/produk/$bs[gambar]"; ?>" data-lightbox="image-1" data-title="<?php echo "$bs[nama_produk]"; ?>">
														<img data-echo="<?php echo "well_img/produk/$bs[gambar]"; ?>" src="assets/images/blank.gif" alt="" style="width: 90%;">
														<div class="zoom-overlay"></div>
													</a>					
												</div><!-- /.image -->
												<?php if($bs['special'] == 'new'){?>
													<div class="tag tag-micro new">
														<span>new</span>
													</div>
												<?php }elseif($bs['special'] == 'promo'){?>
													<div class="tag tag-micro sale">
														<span>sale</span>
													</div>
												<?php }elseif($bs['special'] == 'hot'){?>
													<div class="tag tag-micro hot">
														<span>hot</span>
													</div>
												<?php } ?>

											</div><!-- /.product-image -->
										</div><!-- /.col -->
										<div class="col col-xs-7">
											<div class="product-info">
												<h3 class="name"><a href="<?php echo "product-$bs[id_produk]-$bs[produk_seo].html"; ?>"><?php echo "$bs[nama_produk]"; ?></a></h3>
												<h3 class="name">Rp. <?php echo $hargadisc; ?>,-</h3>
												<div class="action"><a href="<?php echo "product-$bs[id_produk]-$bs[produk_seo].html"; ?>" class="lnk btn btn-primary">Detail produk</a></div>
											</div>
										</div><!-- /.col -->
									</div><!-- /.product-micro-row -->
								</div><!-- /.product-micro -->
							</div>
							
				<?php
					if($no % 2 == 0)
					{
				?>
						</div>
					</div>					
				<?php
					}
				$no++;
				}
				?>
				
			</div>
		</div><!-- /.sidebar-widget-body -->
	</div><!-- /.sidebar-widget -->
	<!-- ============================================== BEST SELLER : END ============================================== -->	

	<!-- ============================================== BLOG SLIDER ============================================== -->

	<!-- ============================================== BLOG SLIDER : END ============================================== -->	

</div>

<!-- /.homebanner-holder -->