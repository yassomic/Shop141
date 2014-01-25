/******* overlay charity info ********/
jQuery(document).ready(function($){
    $('.fdw-background').hover(
        function () {
            $(this).animate({opacity:'1'}, 200);
        },
        function () {
            $(this).animate({opacity:'0'});
        }
    ); 
});


/***** fading and dropping menu *****/ 
$elem1 = $('.index-title-box');
$elem2 = $('.navhead');
$elem3 = $('.navrow');
$elem4 = $('.arrow');
$elem5 = $('.charity-paragraph');
$elem6 = $('.charity-about-box');

var scrollState = 'top';

$(window).scroll(function(){ 
    var scrollPos = $(window).scrollTop();
    if( ( scrollPos != 0 ) && ( scrollState === 'top' ) ) {
        $elem1.stop().animate({marginBottom: '-40px'}, 300);
        $elem3.fadeTo("slow", 0.5);
        $elem4.fadeIn("slow");
        $elem5.fadeOut("medium");
        $elem6.stop().animate({height: 0}, 500);
        scrollState = 'scrolled';

    }       
    else if( ( scrollPos === 0 ) && ( scrollState === 'scrolled' ) ) {
        $elem1.stop().animate({marginBottom: '10px'}, 300);
        $elem3.fadeTo("slow", 1);
        $elem4.fadeOut("slow");
        $elem5.fadeIn("slow");
        $elem6.stop().animate({height: 100}, 500);
        scrollState = 'top';
    }
});


$("a img.arrow").on("click", function(e){
    e.preventDefault(); 
    $('html, body').animate({scrollTop: (0)}, 500);
});

