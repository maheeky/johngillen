<?php
/**
 * The site definitions and functions
 *
 * @package johngillen
 */

 /**
  * Text domain and theme version. 
  */
define( 'TDOMAIN', 'johngillen' );
define( 'THEMEVER', '1.0.0' );

/**
 * Standard theme setup. 
 */
add_action('after_setup_theme', function() {

    /**
     * Add support for Featured Images.
     */
    add_theme_support( 'post-thumbnails' );

    /**
     * Add support for HTML5 elements.
     */
	add_theme_support(
		'html5',
		array(
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'script',
			'style',
		)
    );
    /**
     * Register WP nav menus
     */
    register_nav_menus(
		array(
			'main'   => __( 'Main Menu', TDOMAIN ),
		)
	);
});

/**
 * Enqueue styles and scripts for the theme.
 *
 * @return void
 */
add_action('wp_enqueue_scripts', function() {
    /**
     * Register theme JS, localize for Ajax. 
     */
    wp_register_script( 'app', get_template_directory_uri() .'/dist/js/app.js', array('jquery'), THEMEVER );
    $ajax_variables = [
        'ajUrl' => admin_url('admin-ajax.php'),  
    ];
    wp_localize_script('app', 'ajaxVariables', $ajax_variables);
    wp_enqueue_script('app');

    wp_enqueue_style( 'styles', get_template_directory_uri() . '/dist/css/styles.css', [], THEMEVER );
    /**
     * Register custom fonts.
     */   
    wp_enqueue_style( 'CustomFonts', 'https://fonts.googleapis.com/css2?family=Manrope:wght@300&family=Nanum+Gothic:wght@400;700;800&display=swap', [], THEMEVER );
});