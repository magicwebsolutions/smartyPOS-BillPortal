$(document).ready(function() {

    $('.dropdown').on('show.bs.dropdown', function() {
        $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
    });

    // Add slideUp animation to Bootstrap dropdown when collapsing.
    $('.dropdown').on('hide.bs.dropdown', function() {
        $(this).find('.dropdown-menu').first().stop(true, true).slideUp();
    });

    // tabs
    $('.common-tab li').click(function() {
        var tab_id = $(this).attr('data-tab');

        $('.common-tab li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#" + tab_id).addClass('current');
    });

    // matchHeight
    // $('.integrations-list p').matchHeight();
    // $('.integrations-list h4').matchHeight();
});

$(function() {
    var Accordion = function(el, multiple) {
        this.el = el || {};
        this.multiple = multiple || false;

        // Variables privadas
        var links = this.el.find('.link');
        // Evento
        links.on('click', { el: this.el, multiple: this.multiple }, this.dropdown)
    }

    Accordion.prototype.dropdown = function(e) {
        var $el = e.data.el;
        $this = $(this),
            $next = $this.next();

        $next.slideToggle();
        $this.parent().toggleClass('open');

        if (!e.data.multiple) {
            $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
        };
    }

    var accordion = new Accordion($('#accordion'), false);

    // $('#color').colpick({
    //     layout: 'hex',
    //     submit: 0,
    //     color: 'auto',
    //     colorScheme: 'light',
    //     onChange: function(hsb, hex, rgb, fromSetColor) {
    //         if (!fromSetColor) $('#color').val('#' + hex).css({ 'background': '#' + hex});
    //         // if (!fromSetColor) $('#color span').val('#' + hex).css({'color': '#' + hex });
    //     },
    //     onSubmit: function(hsb, hex, rgb, el) {
    //         $('#color').colpickHide();
    //     }
    // });

});

// List with handle
// Sortable.create(listWithHandle, {
//     handle: '.move',
//     animation: 1000
// });
// Sortable.create(listWithHandle, {
//     handle: '.signin-field',
//     animation: 1000
// });
