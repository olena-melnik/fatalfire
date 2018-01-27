<div class="page-content">
	<div class="container">
		<section class="viewed">
				<div class="section-title">
					<h2 class="title"><?php echo $heading_title; ?></h2>
					<div class="section-paginator hidden-xs">
						<div class="paginator-list">
							<button class="paginator-item">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_arwleft"></use>
									</svg>
								</span>
							</button>
							<button class="paginator-item">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_arwright"></use>
									</svg>
								</span>
							</button>
						</div>
					</div>
				</div>

				<div class="row">
				<div>
					<!--div class="slider-items"-->
						<?php foreach ($products as $product) { ?>
						<?php //var_dump ($product) ;echo "<br>;" ?>
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
								<?php if ($special) { ?>
									<span class="product-label product-label_bonus">
										<span class="product-label-price">+<?php echo $benefit ?>
											<!--span class="product-label-price-currancy">грн</span-->
										</span>
										<span class="product-label-descr">бонус до <?php echo $product['date_end']; ?></span>
									</span>
								<?php } ?>		
		 
										<span class="product-color">
								
											<?php foreach ($product['colors']['ecolors'] as $color) { ?>
												<?php if ($color) { ?>
												<span style="background-color:<?php echo $color; ?>"></span>
												<?php } ?>	
											<?php } ?>	
			
										</span>
											
									<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
									
									<a href="<?php echo $product['href']; ?>" class="product-image-link">
										<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="<?php echo $product['href']; ?>" class="product-title-link"><?php echo $product['name']; ?></a>
									</h3>
									<span class="product-brand"><?php echo $product['manufacturer']; ?></span>
								</div>
								<div class="product-info">
									<div class="product-price">
									
									 <?php if ($product['special']) { ?>
										<span class="product-price_old"><?php echo $product['special']; ?></span>
										<span class="product-price_new"> <?php echo $product['special']; ?></span>
										<?php } else { ?>				
											<span class="product-price_new"><?php echo $product['price']; ?></span>
										<?php } ?>	
														
									</div>
									<div class="product-buy">
										<a href="<?php echo $product['href']; ?>addtocart" class="btn btn_act popup-btn">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_cart"></use>
													</svg>
												</span>
											</span>
											<span class="btn-text">Купить</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href ="" data-toggle="tooltip" class="product-act-link popup-btn" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text"><?php echo $button_wishlist; ?></span>
									</a>

								<a href="" class="product-act-link popup-btn" onclick="compare.add('<?php echo $product['product_id']; ?>');">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										
	
										<span class="btn-text"><?php echo $button_compare; ?></span>
									</a>
								</div>
							</article>
						</div>
						<?php } ?>

					</div>
				</div>
			</section>
      </div>
</div>		
		


