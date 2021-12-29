(function ($) {
    "use strict";

    jQuery(document).ready(function ($) {

        /*------------------------------
            Smooth Scroll effect
        -------------------------------*/

        $(document).on('click', '.navbar-nav li a', function (e) {
            var anchor = $(this).attr('href');
            var link = anchor.slice(0, 1);
            if ('#' == link) {
                e.preventDefault();
                var top = $(anchor).offset().top;
                $('html, body').animate({
                    scrollTop: $(anchor).offset().top
                }, 1000);
                $(this).parent().addClass('current-menu-item').siblings().removeClass('current-menu-item');
            }

        });

        /*------------------------------
            wow js init
        -------------------------------*/
        new WOW().init();

        /*------------------------------
            counter section activation
        -------------------------------*/
        var counternumber = $('.count-num');
        counternumber.counterUp({
            delay: 20,
            time: 1800
        });
    });

    /*------------------------------
           Scroll to top
    -------------------------------*/

    $(window).scroll(function () {

        if ($(this).scrollTop() > 800) {
            $(".scroll-to-top").fadeIn();
        } else {
            $(".scroll-to-top").fadeOut();
        }
    })

    $(".scroll-to-top").click(function () {

        $("html, body").animate({
            scrollTop: 0
        }, 2000);
    })

    $(window).on('load', function () {

        /*------------------------------
           Preloader
        -------------------------------*/

        $('.preloader-inner').fadeOut(1000);
    });

}(jQuery));