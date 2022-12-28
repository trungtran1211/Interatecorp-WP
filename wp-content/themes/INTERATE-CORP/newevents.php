<div class="newevent" id="news">
    <div class="container">
        <div class="newevent-container">
            <h1>TIN TỨC VÀ SỰ KIỆN</h1>
            <div class="newevent-list">
            <?php
                $args = array(
                        'post_type' => 'post',
                        'posts_per_page' => '3',
                        'order' => 'DESC',
                        'tax_query' => [
                            [
                                'taxonomy' => 'category',
                                'terms' => 5,
                                
                            ] 
                            and
                            [
                                'taxonomy' => 'category',
                                'terms' => 1,
                                
                            ],
                        ],
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