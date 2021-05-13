(function($) { 

    $(function() {
        $('#nav-button').click( function(e) {
            e.preventDefault();
            $('.off-canvas').toggleClass('active');
            $(this).toggleClass('active');
            $('.nav-right').toggleClass('active');

            if( $(this).hasClass('active') ) {
                $(this).html("&times;");
                $(this).attr("aria-label", "Close the navigation menu");
            } else {
                $(this).html('<i class="fas fa-bars"></i>')
                $(this).attr("aria-label", "Open the navigation menu");
            }

        });
    });

    /**
     * Remove any active classes if we are above the mobile breakpoint. 
     */
    $(window).bind('resize', function() {
        if($(this).width() > 480) {
            console.log("Hello");
            $('.off-canvas').removeClass('active');
            $('.nav-right').removeClass('active');
            $('#nav-button').removeClass('active');
        }
    })

})(jQuery);