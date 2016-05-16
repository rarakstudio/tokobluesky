<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
<!-- ================================== TOP NAVIGATION ================================== -->
<div class="side-menu animate-dropdown outer-bottom-xs" style="margin-left: -1%;">
	<div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Kategori</div>        
	<nav class="yamm megamenu-horizontal" role="navigation">
		<ul class="nav">
			<?php 
				$cek_kategori=mysql_query("SELECT * FROM subkategori");
				while($ck=mysql_fetch_array($cek_kategori)){
			?>
			<li class="dropdown menu-item">
				 <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				 <span onclick="location.href='kategori-<?php echo $ck['seo'].'-'.$ck['id_subkategori'] ?>'"><?php echo $ck['nama']; ?></span></a>
					
					<?php 
					//cek image subkategori
					$cek=mysql_query("SELECT * FROM subsub_kategori where id_subkategori='$ck[id_subkategori]'");
					while($c=mysql_fetch_array($cek)){
					?>
					<?php } ?>
				<!-- ================================== MEGAMENU VERTICAL ================================== -->
				<ul class="dropdown-menu mega-menu">
					<li class="yamm-content">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-lg-12">
								<ul>
									<?php 
										$cek_subkategori=mysql_query("SELECT * FROM subsub_kategori where id_subkategori='$ck[id_subkategori]'");
										while($cs=mysql_fetch_array($cek_subkategori)){
									?>
										<li><a href="subkategori-<?php echo $cs['seo'].'-'.$cs['id_subsub'] ?>"><?php echo $cs['nama']; ?></a></li>
									<?php } ?>
								</ul>
							</div>								
						</div><!-- /.row -->
					</li><!-- /.yamm-content -->                    
				</ul><!-- /.dropdown-menu -->
	   
			</li><!-- /.menu-item -->
			<!-- ================================== MEGAMENU VERTICAL ================================== -->     
			<?php } ?>
		</ul><!-- /.nav -->
	</nav><!-- /.megamenu-horizontal -->
</div><!-- /.side-menu -->
<!-- ================================== TOP NAVIGATION : END ================================== --> 
<?php /* ?>
	<!-- ============================================== SPECIAL DEALS ============================================== -->
	<div class="sidebar-widget outer-bottom-small wow fadeInUp">
		<h3 class="section-title">Special Deals</h3>
		<div class="sidebar-widget-body outer-top-xs">
			<div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
				<?php
				$no = 1;
				$deals = mysql_query("SELECT * FROM produk where deals = 'Y' AND tampil_depan = 'y' ORDER BY id_produk DESC limit 16");
				while($d = mysql_fetch_array($deals))
				{
					if($no % 4 == 1)
					{
				?>
					<div class="item">
						<div class="products special-product">
				<?php
					}
				?>
							<div class="product">
								<div class="product-micro">
									<div class="row product-micro-row">
										<div class="col col-xs-5">
											<div class="product-image">
												<div class="image">
													<a href="<?php echo "well_img/produk/$d[gambar]"; ?>" data-lightbox="image-1" data-title="<?php echo "$d[nama_produk]"; ?>">
														<img data-echo="<?php echo "well_img/produk/$d[gambar]"; ?>" src="assets/images/blank.gif" alt="" style="width: 90%;">
														<div class="zoom-overlay"></div>
													</a>
												</div><!-- /.image -->
												<?php if($d['special'] == 'new'){?>
													<div class="tag tag-micro new">
														<span>new</span>
													</div>
												<?php }elseif($d['special'] == 'promo'){?>
													<div class="tag tag-micro sale">
														<span>sale</span>
													</div>
												<?php }elseif($d['special'] == 'hot'){?>
													<div class="tag tag-micro hot">
														<span>hot</span>
													</div>
												<?php } ?>
												
											</div><!-- /.product-image -->
										</div><!-- /.col -->
										<div class="col col-xs-7">
											<div class="product-info">
												<h3 class="name">
													<a href="<?php echo "product-$d[id_produk]-$d[produk_seo].html"; ?>">
														<?php echo "$d[nama_produk]"; ?>
													</a>
												</h3>
												<div class="action">
													<a class="lnk btn btn-primary" href="#">Add To Cart</a>
												</div>
											</div>
										</div><!-- /.col -->
									</div><!-- /.product-micro-row -->
								</div><!-- /.product-micro -->
							</div>
				<?php
					if($no % 4 == 0)
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
	<!-- ============================================== SPECIAL DEALS : END ============================================== -->
<?php  */ ?>
	<!-- ============================================== HOT DEALS ============================================== -->
	<div class="sidebar-widget hot-deals wow fadeInUp">
		<h3 class="section-title">hot deals</h3>
		<div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">
			<?php
			$hot	= mysql_query("SELECT * FROM produk where discount != 0 limit 8");
			while($h = mysql_fetch_array($hot))
			{
			?>
				<div class="item">
					<div class="products">
						<div class="hot-deal-wrapper">
							<div class="image">
								<img src="<?php echo "well_img/produk/$h[gambar]"; ?>" alt="" style="width: 90%;">
							</div>
							<div class="sale-offer-tag"><span><?php echo "$h[discount]%"; ?><br>off</span></div>
						</div><!-- /.hot-deal-wrapper -->

						<div class="product-info text-left m-t-20">
							<h3 class="name">
								<a href="<?php echo "product-$h[id_produk]-$h[produk_seo].html"; ?>">
									<?php echo "$h[nama_produk]"; ?>
								</a>
							</h3>
						</div><!-- /.product-info -->

						<div class="cart clearfix animate-effect">
							<div class="action">
								<div class="add-cart-button btn-group">
									<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
										<i class="fa fa-shopping-cart"></i>													
									</button>
									<a href="<?php echo "product-$h[id_produk]-$h[produk_seo].html"; ?>">
										<button class="btn btn-primary" type="button">Detail produk</button>
									</a>
								</div>
							</div><!-- /.action -->
						</div><!-- /.cart -->
					</div>	
				</div>
			<?php
			}
			?>
		</div><!-- /.sidebar-widget -->
	</div>
	<!-- ============================================== HOT DEALS: END ============================================== -->
			
	<!-- ============================================== COLOR============================================== -->
	<div class="sidebar-widget  wow fadeInUp outer-top-vs ">
		<div id="advertisement" class="advertisement">
			<?php
			$advertise = mysql_query("SELECT * FROM advertise ");
			while($g = mysql_fetch_array($advertise)){
				
			?>
				<div class="item" style="background-image: url('<?php echo "well_img/advertise/$g[gambar]"; ?>');">
					<div class="container-fluid">
						<div class="caption vertical-top text-left">
							<div class="big-text">
								<a href="<?php echo "$g[url]"; ?>"><?php echo "$g[judul]"; ?>
							</div>
						</div><!-- /.caption -->
					</div><!-- /.container-fluid -->
				</div><!-- /.item -->
			<?php
			}
			?>
		</div><!-- /.owl-carousel -->
	</div>    
	<!-- ============================================== COLOR: END ============================================== -->
	
	<!-- ============================================== PRODUCT TAGS ============================================== -->
	<div class="sidebar-widget product-tag wow fadeInUp">
		<h3 class="section-title">Product tags</h3>
		<div class="sidebar-widget-body outer-top-xs">
			<div class="tag-list">
				<?php 
					$produk_tag=mysql_query("SELECT * FROM custom_link order by nama");
					while($pt=mysql_fetch_array($produk_tag)){
				?>
					<a class="item" title="<?php echo $pt['nama']; ?>" href="<?php echo $pt['link']; ?>"><?php echo $pt['nama']; ?></a>
				<?php } ?>
			</div><!-- /.tag-list -->
		</div><!-- /.sidebar-widget-body -->
	</div><!-- /.sidebar-widget -->
	<!-- ============================================== PRODUCT TAGS : END ============================================== -->

	<!-- ============================================== NEWSLETTER ============================================== -->
	<div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
		<h3 class="section-title">Newsletters</h3>
		<div class="sidebar-widget-body outer-top-xs">
			<p>Sign Up for Our Newsletter!</p>
			<form method="POST" role="form" action="<?php echo "well_cont/subscribe.php"; ?>">
				 <div class="form-group">
					<label class="sr-only" for="exampleInputEmail1">Email address</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter" name="email" required>
				  </div>
				<button class="btn btn-primary" type="submit" value="Submit">Subscribe</button>
			</form>
		</div><!-- /.sidebar-widget-body -->
	</div><!-- /.sidebar-widget -->
	<!-- ============================================== NEWSLETTER: END ============================================== -->

</div><!-- /.sidemenu-holder -->