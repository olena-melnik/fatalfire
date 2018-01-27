	<!-- Slider -->
	<section class="slider">
		<div class="container">
			<div class="slider-wrap">

<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
				
				

  <?php foreach ($banners as $banner) { ?>
 
 <div class="item">
   
   
   				<!-- slider item -->
				<div class="slider-item">
					<a href="<?php echo $banner['link']; ?>" class="slider-link"></a>
					<div class="slider-item-content">
						<div class="slider-text">
							<span class="slider-title"><?php echo $banner['short_description']; ?></span>
							<span class="slider-title_sub"><?php echo $banner['title']; ?>"</span>
							<p class="slider-descr"><?php echo $banner['description']; ?></p>
							<div class="slider-price-wrap">			
							<?php if($banner['benefit']) {?>
							<span class="slider-price"><?php echo $banner['psprice']; ?></span>
							<span class="slider-price_old"><?php echo $banner['price']; ?></span>
							<?php } else{?>		
							<span class="slider-price"><?php echo $banner['price']; ?></span>
							<?php } ?>				
						</div>
							
							
						<?php if ($banner['link']) { ?>	
						<a href="<?php echo $banner['link']; ?>" class="btn btn_act slider-btn_act">Перейти к товару</a>
						<?php } ?>
						
						</div>
						
						<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slider-image hidden-xs hidden-sm"></a>
						
						<?php if($banner['benefit']) {?>
						<span class="slider-price-bonus hidden-xs hidden-sm">+<?php echo $banner['benefit']; ?>
						<span class="slider-price-bonus_currency">грн*</span>
						</span>
						
						
						<span class="slider-price-bonus_descr hidden-xs hidden-sm">* Внимание, БОНУС действительный до <?php echo $banner['date_end']; ?></span>
						<?php } ?>
					</div>
				</div>
   
   
   
   
  
  
  </div>
  
  
  
  <?php } ?>
  
  
  
  </div>
  
  
  
  
  
  
</div>
</div>
</section>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>

