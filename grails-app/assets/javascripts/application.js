// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery-1.11.1.min.js
//= require bootstrap.min.js
//= require slick.min.js
//= require placeholdem.min.js
//= require placeholdem.min.js
//= require rs-plugin/js/jquery.themepunch.plugins.min.js
//= require rs-plugin/js/jquery.themepunch.revolution.min.js
//= require waypoints.min.js
//= require scripts.js
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
