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

