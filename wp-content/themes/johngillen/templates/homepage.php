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
        <?php 
            $intro_image = get_field('intro_image' ); 
            $alt = (isset($intro_image['alt']) ? $intro_image['alt'] : "" );

            if( $intro_image ) : ?>
                <div class="image-wrapper">
                    <img class="img" src="<?= $intro_image['url'] ?>" alt="<?= $alt ?>" loading="lazy">        
                </div>
        <?php endif; ?>
    </div>

    <div class="body-section animate animate-slide text-center">

        <h2>How I'm helping people beat<br><span class="blue">Drug & Alcohol Addiction</span></h2>

        <?= get_field('second_slider_content') ?>
        <?php get_template_part('template-parts/homepage/slider'); ?>

    </div>

    <div class="body-section animate-slide">
        
            <h2>What is<br><span class="blue">NAD+ Therapy?</span></h2>
            
            <div class="flex-container two-column-text">
                <?= get_field('second_slider_content' ); ?>
            </div>
            
            <?php get_template_part('template-parts/homepage/blue-slider'); ?>
    </div>

    <div class="body-section animate-slide">
            <?= get_field('section_4_content' ); ?>
            <?php 
                $image = get_field('section_4_image'); 
                $alt = (isset($image['alt']) ? $image['alt'] : "" );    
            ?>

            <?php if( $image ) : ?>
                <div class="image-wrapper">
                    <img class="img" src="<?= $image['url'] ?>" alt="<?= $alt ?>" loading="lazy">        
                </div>
            <?php endif; ?>

    </div>
<?php
get_footer();