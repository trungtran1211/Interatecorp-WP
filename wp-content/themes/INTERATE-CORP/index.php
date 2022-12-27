<?php
    get_header();
?>
			<!-- Banner -->
			<div class="banner">
				<div class="banner-list">
					<div class="banner-item">
						<!-- <img src="<?php echo get_template_directory_uri(); ?>/images/banner1.png" class="banner-img" alt="" /> -->
						<?php if(get_theme_mod('header_image')): ?>
							<img src="<?php echo esc_url(get_theme_mod('header_image')) ?>" alt="">
						<?php EndIf; ?>
						<div class="container">
							<div class="banner-content">
								<h2>Những gì chưa có thường lệ thì</h2>
								<h1>interate corp sẽ là ngoại lệ</h1>
								<a href="#">
									<button class="banner-btn">
										Xem thêm
										<img src="<?php echo get_template_directory_uri(); ?>/images/arrow-btn.png" alt=""/>
									</button>
								</a>
							</div>
							<div class="number">
								<span>01</span>
							</div>
						</div>
					</div>
					<!-- <div class="banner-item">
						<img src="<?php echo get_template_directory_uri(); ?>/images/banner2.png"  class="banner-img" alt="" />
						<div class="container">
							<div class="banner-content">
								<h2>Những gì chưa ai làm thì</h2>
								<h1>interate corp sẽ là đơn vị tiên phong</h1>
								<a href="#">
									<button class="banner-btn">
										Xem thêm
										<img
											src="<?php echo get_template_directory_uri(); ?>/images/arrow-btn.png"
											alt=""
										/>
									</button>
								</a>
							</div>
							<div class="number">
								<span>02</span>
							</div>
						</div>
					</div>
					<div class="banner-item"> -->
						<video
							style="width: 100%"
							controls
							poster="<?php echo get_template_directory_uri(); ?>/images/banner3.png"
						>
							<source
								src="<?php echo get_template_directory_uri(); ?>/images/video1.mp4"
								type="video/mp4"
							/>
						</video>
						<div class="number">
							<span>03</span>
						</div>
					</div>
				</div>
			</div>
			<div class="close1">
				<!-- Content -->
				<div class="content">
					<!-- Về Interate Corp -->
					<div id="about"></div>
					<div class="ct-about" >
						<div class="container">
							<div class="about-container">
								<div class="about-left">
									<span>Về Interate Corp</span>
									<p>
										Interate Corp là một công ty về công nghệ,
										quảng cáo trực tuyến, truyền thông và giải
										trí đa lĩnh vực. <br />
										<br />
										Được thành lập vào cuối năm 2019 với chỉ 5
										nhân sự, sau đó mở rộng và phát triển đến
										hơn 160 nhân sự như hiện tại, Interate Corp
										đã liên tục đổi mới, sáng tạo và cải tiến
										bản thân để mang lại những dịch vụ tốt nhất
										cho khách hàng.
									</p>
									
								</div>
								<div class="about-right">
									<div class="about-list pc">
										<div class="about-item">
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab1.png" alt="">
											<h1>Công ty</h1>
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab2.png" alt="">
											<!-- <img src="<?php echo get_template_directory_uri(); ?>/images/about1.png" alt=""> -->
										</div>
										<div class="about-item">
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab3.png" alt="">
											<h1>Năm kinh nghiệm <br>
												trong lĩnh vực</h1>
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab4.png" alt="">
										</div>
										<div class="about-item">
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab5pc.png" alt="">
											<h1>Nhân viên</h1>
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab6.png" alt="">
										</div>
									</div>
									<div class="about-list-mb mb">
										<div class="aboutitem">
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab3.png" alt="">
											<h1>Năm kinh nghiệm <br> trong lĩnh vực</h1>
										</div>
										<div class="aboutitem">
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab1.png" alt="">
											<h1>Công ty</h1>
										</div>
										<div class="aboutitem">
											<img src="<?php echo get_template_directory_uri(); ?>/images/ab5.png" alt="">
											<h1>Nhân viên</h1>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Sứ Mệnh -->
					<div class="ct-mission">
						<div class="container">
							<div class="mission-container">
								<div class="mission-left">
									<img src="<?php echo get_template_directory_uri(); ?>/images/Mr.Duy.png" alt="" />
								</div>
								<div class="mission-right">
									<h1>Sứ Mệnh</h1>
									<p>
										Với khát vọng tiên phong, đề cao tính sáng
										tạo, Interate Corp phấn đấu trở thành doanh
										nghiệp thương mại điện tử và dịch vụ công
										nghệ VN có chỗ đứng vững chắc trên thị
										trường toàn cầu.
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- Tầm nhìn -->
					<div class="ct-vision">
						<div class="container">
							<div class="vision-container">
								<div class="vision-left">
									<h1>Tầm Nhìn</h1>
									<p>
										Mũi tiên phong tạo ra các sản phẩm mới mang
										lại giá trị lớn cho cộng đồng.
									</p>
								</div>
								<div class="vision-right">
									<img src="<?php echo get_template_directory_uri(); ?>/images/vision.png"  alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Cột mốc đáng nhớ -->
				<div class="milestones">
					<div class="container">
						<div class="milestones-container">
							<h1>NHỮNG CỘT MỐC ĐÁNG NHỚ</h1>
							<div class="milestones-list">
								<div class="milestones-item">
									<h3>8/11/2019</h3>
									<p>
										Interate Corp chính thức được thành lập tại Đà Nẵng
									</p>
								</div>
								<div class="milestones-item">
									<h3>1/6/2020</h3>
									<p>
										Khai trương văn phòng đầu tiên của Interate Corp tại 212 Âu Cơ, Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng.
									</p>
								</div>
								<div class="milestones-item">
									<h3>26/04/2021</h3>
									<p>
										Khai trương văn phòng chi nhánh thứ 2 tại 191 Lê Lợi, Hải Châu 1, Hải Châu, Đà Nẵng.
									</p>
								</div>
								<div class="milestones-item">
									<h3>03/04/2022</h3>
									<p>
										Khai trương văn phòng chi nhánh thứ 3 tại 67 Hoàng Văn Thái, P. Tân Phú, Quận 7, TP.HCM.
									</p>
								</div>
								<div class="milestones-item">
									<h3>14/06/2022</h3>
									<p>
										Công ty PERMATE GLOBAL chính thức được thành lập.
									</p>
								</div>
								<div class="milestones-item">
									<h3>17/06/2022</h3>
									<p>
										Công ty DTStudio chính thức được thành lập.
									</p>
								</div>
								<div class="milestones-item">
									<h3>20/12/2022</h3>
									<p>
										Interate Corp chuyển trụ sở chính sang địa chỉ Lô 05 - Lô 06 Khu A2, đường Nguyễn Sinh Sắc, phường Hòa Minh, quận Liên Chiểu, Đà Nẵng
									</p>
								</div>
								<div class="milestones-item">
									<h3>15/12/2022</h3>
									<p>
										Mây Network chính thức được thành lập.
									</p>
								</div>
							</div>
						</div>
					</div>
					
				</div>
				<!-- Các công ty thành viên -->
				<div class="member" id="member">
					<h1>Các công ty thành viên</h1>
					<div class="member-list">
						<div class="member-item w-100">
							<div class="member-item-content">
								<!-- <img src="<?php echo get_template_directory_uri(); ?>/images/member/11.png" alt="" /> -->
							</div>
						</div>
						<div class="member-item w-100">
							<div class="member-item-content">
								<!-- <img src="<?php echo get_template_directory_uri(); ?>/images/member/22.png" alt="" /> -->
							</div>
						</div>
						<div class="member-item w-100">
							<div class="member-item-content">
								<!-- <img src="<?php echo get_template_directory_uri(); ?>/images/member/33.png" alt="" /> -->
							</div>
						</div>
						<div class="member-item w-100">
							<div class="member-item-content">
								<!-- <img src="<?php echo get_template_directory_uri(); ?>/images/member/44.png" alt="" /> -->
							</div>
						</div>
					</div>
				</div>

				<!-- Tin tức và sự kiện -->
				<div class="newevent" id="news">
					<div class="container">
						<div class="newevent-container">
							<h1>TIN TỨC VÀ SỰ KIỆN</h1>
							<div class="newevent-list">
							<?php
								$args = array(
										'post_type' => 'post',
										'posts_per_page' => '3',
								);

								$post_query = new WP_Query($args);

								if($post_query->have_posts() ) {
										while($post_query->have_posts() ) {
												$post_query->the_post();
												?>
													<div class="newevent-item">
															<a href="<?php the_permalink() ?>">
																<div class="newevent-img">
																	<?php the_post_thumbnail() ?>
																</div>
															</a>
															<h2><?php the_category() ?></h2>
															<a href="<?php the_permalink() ?>">
																<p>
																	<?php the_title(); ?>
																</p>
															</a>
															<a href="<?php the_permalink() ?>">
																<span><?php the_date('d-m-Y'); ?></span>
															</a>
													</div>
											<?php
										}
									}
							?>
								<!-- <div class="newevent-item">
									<a href="https://www.facebook.com/interatecorp/posts/pfbid025dqKM8DwnX8px1zNDoA8mybELxSGoVtJaAnYvHwzQc5VKBMeFzWkaEcj2Fsskcv7l" target="_blank">
										<div class="newevent-img">
											<img src="<?php echo get_template_directory_uri(); ?>/images/newevent2.png" alt="" />
										</div>
										<h2>SỰ KIỆN</h2>
										<p>
											Đêm ca nhạc ngọt ngào nhà Interate Corp
										</p>
										<span>10-12-2022</span>
									</a>
								</div>
								<div class="newevent-item">
									<a href="https://www.facebook.com/interatecorp/posts/pfbid0YBb6Qzmg984D9SBVi56Mv46eHidY7GunzEGp8wWazn6kFG1JdzKp3XaHmTENPJoMl" target="_blank">
										<div class="newevent-img">
											<img src="<?php echo get_template_directory_uri(); ?>/images/newevent3.png" alt="" />
										</div>
										<h2>SỰ KIỆN</h2>
										<p>
											Trung thu đã về đến văn phòng Interate Corp
										</p>
										<span>10-12-2022</span>
									</a>
								</div> -->
									
							</div>
							<a href="https://www.facebook.com/interatecorp" target="_blank">
								<button class="newevent-btn">
									Xem thêm
									<img src="<?php echo get_template_directory_uri(); ?>/images/arrow-btn2.png" alt="" />
								</button>
							</a>
						</div>
					</div>
				</div>

<?php 
    get_footer(); 
?>				