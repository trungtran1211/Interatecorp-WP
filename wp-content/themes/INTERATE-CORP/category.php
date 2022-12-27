<?php
$args = array(
    'post_type' => 'post' ,
    'orderby' => 'date' ,
    'order' => 'DESC' ,
    'posts_per_page' => 6,
    'cat'         => '3',
    'paged' => get_query_var('paged'),
    'post_parent' => $parent
  ); 
  $q = new WP_Query($args);
  if ( $q->have_posts() ) { 
    while ( $q->have_posts() ) {
      $q->the_post();
      // your loop
    }
  }
?>