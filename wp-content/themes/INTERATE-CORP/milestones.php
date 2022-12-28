<div class="milestones">
    <div class="container">
        <div class="milestones-container">
            <h1>NHỮNG CỘT MỐC ĐÁNG NHỚ</h1>
            <div class="milestones-list">
            <?php
                $args = array(
                        'post_type' => 'milestones',
                );
                $post_query = new WP_Query($args);

                if($post_query->have_posts() ) {
                        while($post_query->have_posts() ) {
                                $post_query->the_post();
                                ?>
                            <div class="milestones-item">
                                <h3><?php the_title(); ?></h3>
                                <p>
                                    <?php the_content(); ?>
                                </p>
                            </div>
                        <?php
                    }
                }
            ?>
                <!-- <div class="milestones-item">
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
                </div> -->
            </div>
        </div>
    </div>
</div>