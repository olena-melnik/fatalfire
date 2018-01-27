<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

<!-- for bycicles-->
<link href="catalog/view/theme/default/stylesheet/bootstrap.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/general.css" rel="stylesheet"><!-- conflict style-->
<link href="catalog/view/theme/default/stylesheet/normal.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/styles.css" rel="stylesheet"-->
<!--conflict cart--script src="http://code.jquery.com/jquery-1.10.2.js"></script-->
<!--script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script-->
<!--script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script-->
<!--script src="catalog/view/javascript/scripts.js"></script-->


<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
 <!-- Header -->
	<header class="header">
		<!-- header top -->
				<div class="header-top hidden-sm hidden-xs">
			<div class="container">
			
				<div class="row">
					
					<div class="col-md-6">
			
					    <?php echo $language; ?>
						<nav class="header-nav header-devider">
							<menu class="header-nav_items">
									
									<?php var_dump($informations) ?>
									<?php foreach ($informations as $information) { ?>
										<?php if ($information['sort_order']<'700'){?>
										<li class="header-nav_item"><a href="<?php echo $information['href']; ?>" class="header-nav_link"><?php echo $information['title']; ?></a></li>
										<?php if ($information['sort_order']=='1'){ $aboutInf = $information['title']; $aboutInfHref = $information['href']; } ?>
										
										<?php }else {?>	
											<?php if ($information['sort_order']=='710'){ $bycicleInf = $information['title']; $bycicleInfHref = $information['href']; } ?>
										    <?php if ($information['sort_order']=='720'){ $mountainInf = $information['title']; $mountainInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='730'){ $partsInf = $information['title']; $partsInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='740'){ $helmetInf = $information['title']; $helmetInfHref = $information['href']; } ?>						
											<?php if ($information['sort_order']=='760'){ $helmetForInf = $information['title']; $helmetForInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='770'){ $actionInf = $information['title']; $actiomInfHref = $information['href']; } ?>										
											<?php if ($information['sort_order']=='780'){ $ridingInf = $information['title']; $ridingInfHref = $information['href']; } ?>										
											<?php if ($information['sort_order']=='810'){ $actionsInf = $information['title']; $actionsInfHref = $information['href']; } ?>											
											<?php if ($information['sort_order']=='820'){ $shippingInf = $information['title']; $shippingInfHref = $shipping['href']; } ?>	
											<?php if ($information['sort_order']=='830'){ $newsInf = $information['title']; $newsInfHref = $information['href']; } ?>	
											<?php if ($information['sort_order']=='840'){ $warrantyInf = $information['title']; $warrantyInfHref = $information['href']; } ?>											
											<?php if ($information['sort_order']=='850'){ $howToInf = $information['title']; $howToInfHref = $information['href']; } ?>	
											<?php if ($information['sort_order']=='860'){ $reclamationInf = $information['title']; $reclamationInfHref = $information['href']; } ?>	
											<?php if ($information['sort_order']=='870'){ $questionsInf = $information['title']; $questionsInfHref = $information['href']; } ?>											
											<?php if ($information['sort_order']=='900'){ $schemaInf = $information['title']; $schemaInfHref = $information['href']; } ?>											
										<?php } ?>	
										
									<?php } ?>	
							
								<li class="header-nav_item">
									<a href="<?php echo $contact; ?>" class="header-nav_link"><?php echo $text_contact; ?></a></li>
								
								
							</menu>
						</nav>
						
					</div>
					
	
					
					
					

					<div class="col-md-6">

						<div class="header-user">
							<ul class="header-user_items header-devider">
								<li class="header-user_item">
									<a href="#" class="header-user_link">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_prcode"></use>
												</svg>
											</span>
										</span>
										<span class="header-user-text">Введите промокод</span>
									</a>
								</li>
							</ul>

							<ul class="header-user_items">
								<li class="">
			
									<div class="col-sm-3"><?php echo $cart; ?></div>
									
								</li>

			
								
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
	</header>

		<!-- header bottom -->
	<header>	
		<div class="header-bottom">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-4">
						<a href="/" class="header-logo">
							<picture>
								<img src="catalog/view/theme/default/image/logo.svg" alt="ВЕЛОСКЛАД Интернет-магазин велосипедов">
							</picture>
						</a>
					</div>

					<div class="col-lg-4 col-md-5">
						<div class="header-search-wrap">
							<div class="header-popular">
								Популярное:
								<menu class="header-popular_list">
									<li class="header-popular_item">
										<a href="http://localhost/basic/index.php?route=product/search&search=Велосипед" class="header-popular_link link">Велосипед</a></li>
									<li class="header-popular_item">
										<a href="http://localhost/basic/index.php?route=product/search&search=Горные" class="header-popular_link link">Горные</a></li>
									<li class="header-popular_item">
										<a href="http://localhost/basic/index.php?route=product/search&search=Запчасти" class="header-popular_link link">Запчасти</a></li>
									<li class="header-popular_item">
										<a href="http://localhost/basic/index.php?route=product/search&search=Шлем" class="header-popular_link link">Шлем</a></li>												
								</menu>
							</div>


								<?php echo $search; ?>
      
 


						</div>
					</div>

					<div class="col-lg-5 col-md-3">
						<div class="header-phone">
							<div class="phone-wrap">
								<a href="tel:+380685001002" class="phone-call">+38(068) 500-10-02</a>
								<span class="icon">
									<svg>
										<use xlink:href="#icon_sellphone"></use>
									</svg>
								</span>
								<time class="phone-time">с 9:00 до 18:00 без выходных</time>
							</div>

							<a href="#callback" class="btn btn_cta header-cta popup-btn visible-lg">
								<span class="btn-icon">
									<span class="icon">
										<svg>
											<use xlink:href="#icon_phone"></use>
										</svg>
									</span>
								</span>
								<span class="btn-text">Заказать звонок</span>
							</a>

						</div>
					</div>

				</div>
			</div>
		</div>

    </header>






<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
     


	 <ul class="nav navbar-nav">

        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
       
	   <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']."__"; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
            

			<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
             <?php } ?>
			  
			  
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
		
		
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
	  
	  
    </div>
  </nav>
</div>
<?php } ?>

	<header>
		<div class="nav hidden-sm hidden-xs">
			<div class="container">
				<div class="nav-wrap">
					<a href="http://localhost/basic/index.php?route=product/special" class="nav-link link-discount">
						<span class="btn-icon">
							<span class="icon">
								<svg>
									<use xlink:href="#icon_discount"></use>
								</svg>
							</span>
						</span>
						<span class="btn-text">Скидки</span>
					</a>
					<nav class="nav-list">
						<menu class="nav-items">
						
<?php if ($categories) { ?>
    <?php foreach ($categories as $category) { ?>
    <li class="nav-item"><a href="<?php echo $category['href']; ?>" class="nav-link"><span><?php echo $category['name']; ?></span></a>
      <?php if ($category['children']) { ?>
     
	 
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul class="nav-items_sub">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li class="nav-item_sub"><a href="<?php echo $category['children'][$i]['href']; ?>" class="nav-link_sub" ><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>

<?php } ?>

		
							
						</menu>
					</nav>
				</div>
			</div>
		</div>
	</header>
 <!-- callback -->
 <div id="callback" class="modal">
	 <form action="send.php" method="post" class="ajax-form">
		 <h3 class="title modal-title">Заказать консультацию</h3>
		 <div class="form-group">
			 <input type="text" name="callbackname" class="input input_modal" placeholder="Ваше имя*" required>
			 <input type="text" name="callbacktel" class="input input_modal" placeholder="Ваш телефон*" required>
		 </div>
		 <p class="modal-text_small">* - поля, обязательные для заполнения</p>
		 <input type="submit" name="callbackbtn" id = "callbackbtn" class="btn btn_act btn_submit" value="Отправить">
	 </form>
 </div>
</section>
<?php
if(isset($_POST["callbackname"]) && isset($_POST["callbacktel"])){
	echo $_POST["callbackname"];
	$message = $_POST["callbackname"]." ".$_POST["callbacktel"];
	if(mail('test205@ukr.net', 'Test', $message)){
	echo "It`s ok";
	} else {
	echo "Error!";
			}
		}

?>

	