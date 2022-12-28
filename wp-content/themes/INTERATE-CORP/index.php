<?php
    get_header();
?>
			<!-- Banner -->
			<?php
				get_template_part('banner');
			?>	
			<div class="close1">
				<!-- Content -->
				<?php
					get_template_part('content'); //ok
				?>	
				<!-- Cột mốc đáng nhớ -->
				<?php
					get_template_part('milestones');
				?>	
				<!-- Các công ty thành viên -->
				<?php
					get_template_part('member'); //ok
				?>	
				<!-- Tin tức và sự kiện -->
				<?php
					get_template_part('newevents'); //ok
				?>	
			</div>
			
			<?php 
				wp_footer()	
			?>				
<?php 
    get_footer(); 
?>				