<?php
/**
 * The template part for the homepage slider element.
 */
$slider = get_field('second_slider_group');
?>    
    <div class="swiper-container-blue">
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