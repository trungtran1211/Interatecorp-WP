<?php
    get_header();
?>

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

 <?php the_title(); ?>
 <?php the_post_thumbnail('small') ?>
 <?php the_content(); ?>
 <?php echo get_the_date(); ?>

<?php endwhile; ?>
<?php endif; ?>
<?php get_sidebar(); ?>

<?php 
    get_footer(); 
?>