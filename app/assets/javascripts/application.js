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
//= require_tree .

// $(function(){ $(document).foundation(); });

$(document).ready(function(){

// Parallax
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

// Pulsate Logo

$(document).ready(function(){

function pulsate(element) {
    $(element || this).animate({ opacity: 0.4 }, 2000, function() {
        $(this).animate({ opacity: 1 }, 1000,  pulsate);
    });
}

pulsate('.logo2');

});

// Fade Logo and Banner
$(document).ready(function(){

  $(window).scroll(function () {
    $('[class="logo2"]').each(function () {
      if (($(this).offset().top - $(window).scrollTop()) < 40) {
	    $(this).stop().fadeTo('fast', 0);
	  }  else {
	      $(this).stop().fadeTo('fast', 1);
	  }
});
});
});

$(document).ready(function(){

  $(window).scroll(function () {
    $('[class="banner"]').each(function () {
      if (($(this).offset().top - $(window).scrollTop()) < 40) {
	    $(this).stop().fadeTo('fast', 0);
	  }  else {
	      $(this).stop().fadeTo('fast', 1);
	  }
});
});
});

