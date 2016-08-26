// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jQuery-2.1.4.min.js
//= require admin/jquery-migrate-1.2.1.min.js
//= require admin/jquery-ui.js
//= require bootstrap.min.js
//= require admin/bootstrap-hover-dropdown.js
//= require admin/html5shiv.js
//= require admin/respond.min.js
//= require admin/jquery.metisMenu.js
//= require admin/jquery.slimscroll.js
//= require admin/jquery.cookie.js
//= require admin/icheck.min.js
//= require admin/custom.min.js
//= require admin/jquery.menu.js
//= require admin/pace.min.js
//= require admin/holder.js
//= require admin/responsive-tabs.js
//= require admin/zabuto_calendar.min.js
//= require jplist.js
//= require jplist.min.js
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