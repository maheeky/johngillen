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
        <meta name="og:title" property="og:title" content="John Gillen: Helping the UK & Europe beat Drug & Alcohol addiction">
        <meta name="twitter:card" content="John Gillen: Helping the UK & Europe beat Drug & Alcohol addiction">
        <title>John Gillen | Homepage</title>

    <?php wp_head(); ?>
    </head>

    <body <?= body_class() ?>>
        <?php wp_body_open(); ?>

        <?php get_template_part('template-parts/nav/navbar' ); ?>

    <main class="site-wrapper">