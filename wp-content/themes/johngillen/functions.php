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
   
    wp_enqueue_style( 'custom-fnts', 'https://fonts.googleapis.com/css2?family=Manrope:wght@300&family=Nanum+Gothic:wght@400;700;800&display=swap', [], THEMEVER );
    wp_enqueue_style( 'heading-fonts', 'https://fonts.googleapis.com/css2?family=Arvo&display=swap', [], THEMEVER );
    wp_enqueue_style( 'fa-css', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css', [], '5.15.3' );
});

/**
 * Pass in required ACF Key from the field group, return that or a default value.
 *
 * @param String $field_title
 * @param Array $field_array
 * @param String $default
 * @return String
 */
function jg_output_acf_group($field_title, $field_array, $default) 
{
  if( is_array($field_array) ) 
  {
    if( array_key_exists( $field_title, $field_array ) ) 
    {
      return $field_array[$field_title];
    }  else {
      return $default; 
    }
  }
}

add_action( 'wp_ajax_submitcontact', 'submitcontact' );
add_action( 'wp_ajax_nopriv_submitcontact', 'submitcontact' );

function submitcontact() {

  $pass = false;
  $name_reg =  '/^[A-Za-z]+$/';
  $phone_reg = '/^[0-9]+$/';
  $email_reg = '/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/';
  $fields = [
    'name' => $_POST['name'],
    'phone' => $_POST['phone'],
    'email' => $_POST['email'],
  ];

  $errors = [];

  if( preg_match($phone_reg, $fields['phone'] ) ) {
    $errors[]['error'] = "Phone must be numeric";
    $errors[]['container'] = "phone";

  }
  if( !reg_check($name_reg, $fields['name'] ) ) {
    $errors[]['error'] = "Name must be alphabetical.";
    $errors[]['container'] = "name";
  }
  if( !reg_check($email_reg, $fields['email'] ) ) {
    $errors[]['error'] = "Email must valid.";
    $errors[]['container'] = "email";
  }
  if( empty( $errors ) ) {
    $errors = true; 
  }

  echo json_encode($errors);
  wp_die();
}

function reg_check($reg_string, $value) {
  return preg_match($reg_string, $value);
}