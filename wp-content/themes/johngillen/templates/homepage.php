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

    <header class="site-header main-header">
        <div class="overlay">
            <h2>John Gillen</h2>
            <h3>Helping the UK & Europe beat Drug & Alcohol addiction</h3>
            <a href="/" class="btn btn-light">Find out more</a>
        </div>    
        <img src="https://picsum.photos/seed/picsum/200/300" alt="Image of John Gillen">
            
    </header>   
    <div class="site-section">
        <img src="https://picsum.photos/seed/picsum/200/300" alt="Image of John Gillen">
    </div>
    <div class="site-section animate">
        <img src="https://picsum.photos/seed/picsum/200/300" alt="Image of John Gillen">
    </div>

<?php
get_footer();