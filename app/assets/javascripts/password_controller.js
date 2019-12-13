$(document).ready(function() {
    'use strict';

    const $simple_form = $('#user_password').next('.input-group-append');

    $simple_form.click(function() {
        $(this).toggleClass('active');
        if ( $(this).hasClass('active') ) {
            $(this).prev().prop("type", "text");
            $(this).find('.input-group-text').html("🙈");
        } else {
            $(this).prev().prop("type", "password");
            $(this).find('.input-group-text').html("🙊");
        }
        $(this).prev().focus();
    });

    $simple_form.css('cursor', 'pointer').prop('title', 'toggle me');
});