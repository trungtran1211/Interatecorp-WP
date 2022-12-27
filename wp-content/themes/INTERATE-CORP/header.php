<?php
    //echo get_template_directory_uri();
    //blog info (‘template_directory’);
?>



<!DOCTYPE html>
<html <?php echo bloginfo('language') ?>>
	<head>
		<meta <?php echo bloginfo('charset') ?> />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0,   maximum-scale=1.0, user-scalable=no" />
		<link rel="icon" href="<?php echo get_template_directory_uri(); ?>/images/favicon.png" type="image/x-icon" />
		<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/slick.css" />
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style.css" />
		<title>INTERATE CORP</title>
	</head>
	<body>
		<div class="wrapper">
			<div class="scroll">
				<a href="#top"><img src="<?php echo get_template_directory_uri(); ?>/images/scroll.png" /></a>
			</div>
			<!-- Header -->
			<header id="top">
				<div class="land">
					<span class="land1"></span>
					<span class="land2"></span>
					<span class="land3"></span>
				</div>
				<div class="container">
					<div class="header-container pc">
						<div class="logo">
							<a href="#top">
								<img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="" />
							</a>
						</div>

						<?php wp_nav_menu( 
							array( 
								'theme_location' => 'header-menu', 
								'container' => 'false', 
								'menu_id' => 'header-menu', 
								'menu_class' => 'list-menu'
							) 
						); ?>
						<!-- <ul class="list-menu">
							<li><a href="#about" class="smooth-goto">Về chúng tôi</a></li>
							<li><a href="#member" class="smooth-goto">Các công ty thành viên</a></li>
							<li><a href="#news" class="smooth-goto">Tin tức & Sự kiện</a></li>
							<li><a href="https://www.facebook.com/interatevietnam" target="_blank" class="smooth-goto">Tuyển dụng</a></li>
							<li><a href="#contact" class="smooth-goto">Liên hệ</a></li>
						</ul> -->
						<div class="search-lang ">
							<div class="search">
								<form  class="search" role="search" action="" method="get" id="searchform"> 
									<button class="search-btn" type="submit">
										<img src="<?php echo get_template_directory_uri(); ?>/images/Search.png" alt="" />
									</button>
									<input type="text" name="s" placeholder="Search" class="hide">
								</form>
							</div>
							<select name="" id="" class="lang">
								<option value="">VN</option>
								<option value="">EN</option>
							</select>
						</div>
					</div>
					<div class="header-container-mb mb">
						<div class="logomb">
							<a href="#top">
								<img src="<?php echo get_template_directory_uri(); ?>/images/logo-mb.png" alt="" />
							</a>
						</div>
						<div class="menuhd">
							<a href="#" class="iconmenu"
								><img src="<?php echo get_template_directory_uri(); ?>/images/menu.png" alt=""
							/></a>
							<a href="#" class="iconclose iconmenu"
								><img src="<?php echo get_template_directory_uri(); ?>/images/close.png" alt=""
							/></a>
						</div>
						
					</div>
				</div>
				<div class="hide-menu mb">
					<div class="search-langmb">
						<div class="search-mb">
							<img src="<?php echo get_template_directory_uri(); ?>/images/Search-mb.png" alt="" />
							<input type="text" placeholder="Search" />
						</div>
						<select name="" id="" class="lang">
							<option value="">VN</option>
							<option value="">EN</option>
						</select>
					</div>
					<?php wp_nav_menu( 
						array( 
							'theme_location' => 'header-menu', 
							'container' => 'false', 
							'menu_id' => 'header-menu', 
							'menu_class' => 'list-menumb'
						) 
					); ?>
					<!-- <ul class="list-menumb mb">
						<li class="menu-item"><a href="#about" class="smooth-goto"> Về chúng tôi</a></li>
						<li class="menu-item"><a href="#member" class="smooth-goto"> Các công ty thành viên</a></li>
						<li class="menu-item"><a href="#news" class="smooth-goto"> Tin tức & Sự kiện</a></li>
						<li class="menu-item"><a href="https://www.facebook.com/interatevietnam" target="_blank" class="smooth-goto"> Tuyển dụng</a></li>
						<li class="menu-item"><a href="#contact" class="smooth-goto"> Liên hệ</a></li>
					</ul> -->
				</div>
				
			</header>
    
