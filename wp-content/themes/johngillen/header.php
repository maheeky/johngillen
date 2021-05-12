<?php
/**
 * The header partial template
 * 
 * @package johngillen
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo("charset"); ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    <?php wp_head(); ?>
    </head>

    <body <?= body_class() ?>>
        <?php wp_body_open(); ?>

        <?php get_template_part('template-parts/nav/navbar' ); ?>
    
        <header class="site-header">
            <a class="btn btn-dark">Find out more</a>
        </header>

    <main class="grid-container site-wrapper">
