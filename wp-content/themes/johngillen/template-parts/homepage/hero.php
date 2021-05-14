<?php
/**
 * Template partial for the homepage hero image.
 */
$hero = get_field('hero_block');
$image = jg_output_acf_group('hero_image', $hero, get_template_directory_uri().'/assets/herogradient.png');
?>

<div class="hero-image" style="background-image: url(<?= $image ?>)">
    <div class="hero-content">
        <h1><?= jg_output_acf_group('hero_header', $hero, 'John Gillen') ?></h1>
        <h2><?= jg_output_acf_group('hero_subheading', $hero, 'Helping the UK & Europe beat Drug & Alcohol addiction' ) ?></h2>
        <a href="/" class="btn btn-light">Find out more</a>
    </div>
</div>   