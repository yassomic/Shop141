if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
    // some code..
}
else {


( function( $ ) {
    // Init Skrollr
    var s = skrollr.init({
        render: function(data) {
            //Debugging - Log the current scroll position.
            //console.log(data.curTop);
        }
    });
} )( jQuery );

$(document).ready(function(){

var $window = $(window);

  $('div[data-type="background"]').each(function(){
  var $bgobj = $(this); // assigning the object

  $(window).scroll(function() {
    var yPos = -($window.scrollTop() / $bgobj.data('speed'));
  // Put together our final background position
  var coords = '50% '+ yPos + 'px';
  // Move the background
  $bgobj.css({ backgroundPosition: coords });
    });
  });
});

}