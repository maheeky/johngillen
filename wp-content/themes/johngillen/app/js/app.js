import Swiper from "swiper";

(function($) { 
    window.onscroll = function() {
        checkStickyNav();
    }

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

        let swiperContainer = document.querySelector('.swiper-container');
        let secondaryContainer = document.querySelector('.swipter-container-blue');

        if(swiperContainer !== undefined ) 
        {
            const swiper = new Swiper('.swiper-container', {
                slidesPerView: 1,
                spaceBetween: 10,
                breakpoints: {
                  900: {
                    slidesPerView: 3,
                    spaceBetween: 40,
                  },
                },
            });
        }
        if(swiperContainer !== undefined) {
            const blueSlider = new Swiper('.swiper-container-blue', {
                slidesPerView: 1,
                spaceBetween: 10,
                breakpoints: {
                  900: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                  },
                },
            });
        }

    });

    /**
     * Remove any active classes if we are above the mobile breakpoint. 
     */
    $(window).bind('resize', function() {
        if($(this).width() > 480) {
            $('.off-canvas').removeClass('active');
            $('.nav-right').removeClass('active');
            $('#nav-button').removeClass('active');
        }
    })

    function checkStickyNav() {
        let sticky = $('.nav-outer').offset();
        if( sticky.top !== undefined ) 
        {
            if( window.pageYOffset >= sticky.top ) {
                $('.nav-outer').addClass('fixed-position');
            } else {
                $('.nav-outer').removeClass('fixed-position');
            }
        }
    }

    $(function() {
        /**
         * Parse data from the contact form for server side validation
         */
        $('#contact-submit').on('click', function(e){
            e.preventDefault();
            var errorContainer = $('.errors')
            $('.form-row input').removeClass('error-field');
            $('.errors').empty();
            var data = {
                action: 'submitcontact',
                name: $("#name").val(),
                phone:  $("#phone").val(),
                email: $("#email").val(),
            }

            $.ajax({
                method: "POST",
                url: ajaxVariables.ajUrl,
                data: data
            })
            .done(function(results) {
                let errors = JSON.parse(results);

                if( errors !== true && errors.length > 0 ) {
                    for(var x in errors ) {
                        if(errors[x].container != undefined ) {
                            $("#"+errors[x].container).addClass("error-field");
                        }
                        if( errors[x].error !== undefined ) {
                            $(errorContainer).append("<li>"+errors[x].error+"</li>");
                        }
                    }
                }
            });;
        });
    });

})(jQuery);