// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jQuery-2.1.4.min.js
//= require public/bootstrap.min.js
//= require public/owl.carousel.min.js
//= require public/cbpAnimatedHeader.js
//= require public/jquery.appear.js
//= require public/SmoothScroll.min.js
//= require public/theme-scripts.js
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
