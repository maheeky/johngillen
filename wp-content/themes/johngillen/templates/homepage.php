<?php
/**
 * The homepage template - the main page of the site.
 *
 * @package johngillen
 */
get_header();

if ( have_posts() ) {
	while ( have_posts() ) {
		the_post();
	}
}



get_footer();