<?php
/**
 * The template part for the homepage slider element.
 */
$slider = get_field('slider_group');

?>

    <h2>How I'm helping people beat<br><span class="blue">Drug & Alcohol Addiction</span></h2>

    <div class="swiper-container">
        <div class="swiper-wrapper">
            <?php if( is_array($slider) && !empty($slider) ) : ?>
                <?php foreach($slider as $slide) : ?>
                        <div class="swiper-slide">
                            <img src="<?= $slide['url'] ?>" alt="<?= $slide['alt'] ?>">
                        </div>
                    <?php endforeach; ?>
            <?php endif; ?>
        </div>  
    </div>