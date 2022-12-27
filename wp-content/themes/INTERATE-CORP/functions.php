<?php 
add_theme_support('post-thumbnails', array(
    'post',
    'page',
    'custom-post-type-name',
    ));


function searchfilter($query) {
    if ($query->is_search && !is_admin() ) {
        if(isset($_GET['post_type'])) {
            $type = $_GET['post_type'];
                if($type == 'book') {
                    $query->set('post_type',array('book'));
                }
        }       
    }
return $query;
}
add_filter('pre_get_posts','searchfilter');

// Tạo menu main

function register_my_menu() {
    register_nav_menu('header-menu',__( 'Menu chính' ));
    register_nav_menu('footer-menu',__( 'Menu Footer' ));
}
    add_action( 'init', 'register_my_menu' );


// Create Banner
    require_once("templates/helpers/customizer.php")


?>