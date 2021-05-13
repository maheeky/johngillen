(function($) { 

    $(function() {
        $('#nav-button').click( function(e) {
            e.preventDefault();
            $('.off-canvas').toggleClass('active');
        });
    });

})(jQuery);