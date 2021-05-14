<?php
/**
 * The homepage template - the main page of the site.
 * Template Name: Homepage
 * 
 * @package johngillen
 */
get_header();
if ( have_posts() ) while ( have_posts() ) 	the_post();
?>

    <header class="body-section main-header">

        <?php get_template_part('template-parts/homepage/hero' ); ?>

    </header>   

    <div class="body-section animate-slide">
        <h2>Who is<br><span class="blue">John Gillen?</span></h2>
        
        <?= get_field('intro_content'); ?>

        <a href="#contact-form" class="btn btn-dark">Contact John</a>
        <?php $intro_image = get_field('intro_image' ); 
            if( $intro_image ) : ?>
                <div class="image-wrapper">
                    <img class="img" src="<?= $intro_image['url'] ?>" alt="<?= $intro_image['alt'] ?>">        
                </div>
        <?php endif; ?>
    </div>

    <div class="body-section animate animate-slide">

        <?php get_template_part('template-parts/homepage/slider'); ?>

    </div>

    <div class="body-section animate-slide">
        <!-- <img src="https://picsum.photos/seed/picsum/200/300" alt="Image of John Gillen"> -->
    </div>

    <div class="body-section animate-slide">
        <!-- <img src="https://picsum.photos/seed/picsum/200/300" alt="Image of John Gillen"> -->
    </div>

    <div class="body-section animate-slide">
        <!-- <img src="https://picsum.photos/seed/picsum/200/300" alt="Image of John Gillen"> -->
    </div>
<?php
get_footer();