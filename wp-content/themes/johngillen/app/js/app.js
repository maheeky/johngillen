import Swiper from "swiper";
(function($) { 
    /**
     * List of elements that need the active class for design.
     */
    const activeElements = [
        '.off-canvas',
        '.nav-right',
        '#nav-button',
        '.nav-outer'
    ];

    /**
     * Toggle the class for each of the elements in turn.
     */
    function toggleActiveNavbar() {
        activeElements.forEach(function(el) {
            $(el).toggleClass('active');
        });
        toggleNavText();
    }

    /**
     * Toggle the text of the nav button
     */
    function toggleNavText() {
        if( $('#nav-button').hasClass('active') ) {
            $('#nav-button').html("&times;");
            $('#nav-button').attr("aria-label", "Close the navigation menu");
        } else {
            $('#nav-button').html('<i class="fas fa-bars"></i>')
            $('#nav-button').attr("aria-label", "Open the navigation menu");
        }
    }

    $(function() {
        const scrollableElements = document.querySelectorAll('.body-section.animate-slide');
        /**
         * Add event listener for the sticky navbar
         */
        window.onscroll = function() {
            checkStickyNav();
            scrollAnimation();
        }

        $('#nav-button').click( function(e) {
            e.preventDefault();
            toggleActiveNavbar();
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

        /**
         * Detect if current element is in viewport.
         */
        function elementsInView(element, scrollPercentage=100) {
            let elementTop = element.getBoundingClientRect().top;

            if( elementTop <= (window.innerHeight || document.documentElement.clientHeight ) * (scrollPercentage/100) ) {
                return true;
            } else {
                return false;
            }
        }

        /**
         * Add class for active sections within viewport. 
         */
        function scrollAnimation() {
            scrollableElements.forEach((element) => {
                if(elementsInView(element, 100)) {
                    element.classList.add("active-section");
                } else {
                    element.classList.remove("active-section");
                }
            });
        }

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


        let swiperContainer = document.querySelector('.swiper-container');
        let secondaryContainer = document.querySelector('.swiper-container-blue');

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
        if(secondaryContainer !== undefined) {
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