// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require skrollr
//= require foundation
//= require_tree .

// $(function(){ $(document).foundation(); });


// Parallax
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




$(document).foundation();
