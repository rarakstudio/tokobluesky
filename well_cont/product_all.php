    
                <div class='col-md-9'>
                    <!-- ========================================== SECTION – HERO ========================================= -->
                    <div class="category-carousel hidden-xs" id="category">
                        <?php
							$banner = mysql_query("SELECT * FROM banner WHERE id_banner='4'");
							$g=mysql_fetch_array($banner);
						?>
							<div class="item">
								<div class="image">
									<img alt="" class="img-responsive" src="<?php echo "well_img/banner/$g[gambar]"; ?>">
								</div>
								<div class="container-fluid">
									<div class="caption vertical-top text-left">
										<div class="big-text">
											<?php //echo "$g[judul]"; ?>
										</div>
										<div class="excerpt hidden-sm hidden-md">
											<?php echo "$g[judul]"; ?>
										</div>
									</div><!-- /.caption -->
								</div><!-- /.container-fluid -->
							</div>
						
                    </div><!-- ========================================= SECTION – HERO : END ========================================= -->
                    
					<div class="clearfix filters-container m-t-10">
                        <div class="row">
							<div class="col col-sm-6 col-md-2">
                                <div class="filter-tabs">
                                    <ul class="nav nav-tabs nav-tab-box nav-tab-fa-icon" id="filter-tabs">
                                        <li class="active">
                                            <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-list"></i>Grid</a>
                                        </li>
                                        <li>
                                            <a data-toggle="tab" href="#list-container"><i class="icon fa fa-th"></i>List</a>
                                        </li>
                                    </ul>
                                </div><!-- /.filter-tabs -->
                            </div><!-- /.col -->
                            <div class="col col-sm-12 col-md-6">
								<div class="col col-sm-3 col-md-6 no-padding">
                                    <div class="lbl-cnt">
                                        <div class="fld inline">
                                            <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                <label>Sort By </label>
												<select name="sort4" id="sort4" onchange="prosesPrice()">
																<option value="1" selected>
														Price : High to Low        </option>
																<option value="2">
														Price : Low to High        </option>
																<option value="3">
														Name : A - Z               </option>
																<option value="4">
														Name : Z - A               </option>
												</select>
                                            </div>
                                        </div><!-- /.fld -->
                                    </div><!-- /.lbl-cnt -->
                                </div><!-- /.col -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div>
					<div id="ajaxx" style="margin-top:18px;">
                    <div class="search-result-container">
                        <?php
							//$produk = get_all("select * from produk");
						?>
						<div class="tab-content" id="myTabContent">
						
                            <div class="tab-pane active" id="grid-container">
                                <div class="category-product inner-top-vs">
                                    <div class="row">
                                       <?php
                                       	$page   = new pagingProdukAll;
										$batas  = 12;
										$posisi = $page->cariPosisi($batas);
										$sql="SELECT  * FROM produk ORDER BY id_produk DESC LIMIT $posisi,$batas";
										//echo $sql; exit;
										$result=mysql_query($sql);
										while ($p=mysql_fetch_array($result)) {
											# code...
									  	//foreach($produk as $iuk => $p){
								   		$harga       = number_format(($p['harga']),0,",",".");
										$disc        = ($p['discount']/100)*$p['harga'];
										$hargadisc   = number_format(($p['harga']-$disc),0,",",".");
									   ?>
											<div class="col-sm-6 col-md-4 wow fadeInUp">
												<div class="products">
													<div class="product">
														<div class="product-image">
															<div class="image">
																<a href="product-<?php echo $p['id_produk'] ?>-<?php echo $p['produk_seo'] ?>">
																	<img src="<?php echo "well_img/produk/$p[gambar]"; ?>" src="assets/images/blank.gif" width="100%" height="100%">
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
															<h5 class="name" style="font-size: 17px;"><a href="product-<?php echo $p['id_produk'] ?>-<?php echo $p['produk_seo'] ?>"><?php echo "$p[nama_produk]"; ?></a></h5>
														</div><!-- /.product-info -->

														<!-- PRICE -->
														<div class="product-info text-center">
														<h3 class="name">
														<?php
														if($p['discount'] != 0){
														?>
						                                    <span class="price">Rp. <?php echo "$hargadisc"; ?></span>
															<!-- <span class="price-strike">Rp. <?php //echo "$harga"; ?></span> -->
						                                <?php
														}else{
														?>	
															<span class="price">Rp. <?php echo "$harga"; ?></span>
														<?php	
														}
														?>
														</h3>
														</div>
														<!-- PRICE -->
														<div class="product-info text-center">
															<div class="action">
																<ul class="list-unstyled">
																	<li class="add-cart-button btn-group">
																	<!-- test -->
																		<!-- <a href="<?php //echo 'media.php?module=addcart&id='.$p['id_produk']; ?>" class="btn btn-primary icon">
																		<i class="fa fa-shopping-cart"></i> Add to cart</a> -->
																	<!-- test end -->
																		<a href="<?php echo 'media.php?module=addcart&id='.$p['id_produk']; ?>" class="btn btn-primary icon">
																		<i class="fa fa-shopping-cart"></i></a> 
																	<!-- 	<button class="btn btn-primary icon" data-toggle="dropdown" type="button"><i class="fa fa-shopping-cart"></i></button> -->
																		<a href="product-<?php echo $p['id_produk'] ?>-<?php echo $p['produk_seo'] ?>">
																		<button class="btn btn-primary" type="button">Detail Produk</button></a>
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
                                    </div><!-- /.row -->
                                </div><!-- /.category-product -->
                            </div><!-- /.tab-pane -->
							
                            



                        </div><!-- /.tab-content -->
						</div>
							
						<!-- TAMBAHAN OLEH DEVELOPER -->
						<?php
						$jmldata     = mysql_num_rows(mysql_query("SELECT * FROM produk"));
						$jmlhalaman  = $page->jumlah($jmldata, $batas);
						$linkHalaman = $page->navHalaman($_GET['halaman'], $jmlhalaman); 
						?>
						<!-- <div class="pagingzi"> -->
						<!-- <center><?php //echo $linkHalaman; ?></center> -->
						<!--</div> -->
						<!-- TAMBAHAN END -->
                        <div class="clearfix filters-container">
                            <div class="text-right">
                                <div class="pagination-container">

                                <?php echo $linkHalaman; ?>
                                  <!--   <ul class="list-inline list-unstyled">
                                        <li class="prev">
                                            <a href="#"><i class="fa fa-angle-left"></i></a>
                                        </li>
                                        <li>
                                            <a href="#">1</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">2</a>
                                        </li>
                                        <li>
                                            <a href="#">3</a>
                                        </li>
                                        <li>
                                            <a href="#">4</a>
                                        </li>
                                        <li class="next">
                                            <a href="#"><i class="fa fa-angle-right"></i></a>
                                        </li>
                                    </ul> --><!-- /.list-inline -->
                                </div><!-- /.pagination-container -->
                            </div><!-- /.text-right -->
                        </div><!-- /.filters-container -->
                    </div><!-- /.search-result-container -->
					
                </div><!-- /.col -->