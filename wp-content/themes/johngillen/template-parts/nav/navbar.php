<?php
/**
 * The navigation menu partial
 * 
 * @package johngillen
 */
$nav_class = (get_current_user_id() !== 0 ? 'is-logged-in' : '') ;?>

<div class="nav-outer flex-container flex-row <?= $nav_class ?>">

    <h1 class="nav-title">
        <a href="#">
            John Gillen
        </a>
    </h1>
    <span class="off-canvas flex-container flex-row nav-container">

        <nav class="flex-container flex-row navbar">
        <?php
            wp_nav_menu([
                'name' => 'Navbar',
                'echo' => true,
                'container' => false,
            ]);
        ?>
        </nav><!-- /.flex-container.flex-row.navbar -->
        <div class="nav-right flex-container flex-row">
            <a class="btn btn-dark" href="#">
                Contact John
            </a>
            <div class="nav-social">
                <a href="#" aria-label="Click to visit John's Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" aria-label="Click to visit John's Twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" aria-label="Click to visit John's Instagram"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </span>

    
    <a href="#" class="btn btn-nav" id="nav-button" aria-label="Open the navigation menu">
        <i class="fas fa-bars"></i>
    </a>

</div>