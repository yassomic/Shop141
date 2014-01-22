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


$elem1 = $('.index-title-box');
$elem2 = $('.navhead');

var scrollState = 'top';

$(window).scroll(function(){ 
    
    var scrollPos = $(window).scrollTop();

    if( ( scrollPos != 0 ) && ( scrollState === 'top' ) ) {
        $elem1.stop().animate({marginBottom: '-40px'}, 300);
        // $elem2.css({ 'background-color': '#E5F9EE' })
        $elem2.fadeTo("slow", 0.5);
        scrollState = 'scrolled';
    }       
    else if( ( scrollPos === 0 ) && ( scrollState === 'scrolled' ) ) {
        $elem1.stop().animate({marginBottom: '10px'}, 300);
        // $elem2.css({ 'background-color': '#E8E9E5' })
        $elem2.fadeTo("slow", 1);
        scrollState = 'top';
    }

});


