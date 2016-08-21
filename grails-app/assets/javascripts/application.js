// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require modernizr-2.6.2.min.js
//= require jQuery-2.1.4.min.js
//= require bootstrap.min.js
//= require jquery.cookie.js
//= require waypoints.min.js
//= require masonry.pkgd.min.js
//= require owl.carousel.min.js
//= require jquery.scrollTo.min.js
//= require jquery.counterup.min.js
//= require jquery.parallax-1.1.3.js
//= require front.js
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function ($) {
        $('#spinner').ajaxStart(function () {
            $(this).fadeIn();
        }).ajaxStop(function () {
            $(this).fadeOut();
        });
    })(jQuery);
}
