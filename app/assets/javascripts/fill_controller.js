$(document).ready(function() {
    'use strict';

    const User = {
        name: 'George Constanza',
        email: 'tbone84@aol.com',
        password: 'correct-horse-battery-staple',
        avatar: '',
        bio: 'My friends call me T-Bone',
        birthday: '',
        color: 'blue',
        fruit: ['cherry', 'lime', 'mango'],
        music: ['pop', 'hip_hop', 'dance'],
        choices: ['b', 'd'],
        language: 'en',
        pill: 'red',
        friends: '99',
        mood: '60',
        awake: ['08', '30'],
        first_kiss: ['21', '30'],
        active: 'Yes',
        terms: 'true',
    };

    const date_today = new Date(),
        date_today_day = date_today.getDate().toString().slice(-2),
        date_today_month = (date_today.getMonth() + 1).toString().slice(-2),
        date_today_year = date_today.getFullYear().toString();

    const date_tomorrow = new Date();
        date_tomorrow.setDate(date_tomorrow.getDate() + 1);

    const date_tomorrow_day = date_tomorrow.getDate().toString().slice(-2),
        date_tomorrow_month = (date_tomorrow.getMonth() + 1).toString().slice(-2),
        date_tomorrow_year = date_tomorrow.getFullYear().toString();

    const $fill_simpleform = $('[data-fill="simpleform"]');

    $fill_simpleform.click(function(event) {
        $('#user_name').val(User.name);
        $('#user_email').val(User.email);
        $('#user_password').val(User.password);
        $('#user_avatar').val(User.avatar);
        $('#user_bio').val(User.bio);
        $('#user_birthday').val(date_tomorrow);
        $('#user_birthday_1i').val(date_tomorrow_year);
        $('#user_birthday_2i').val(date_tomorrow_month);
        $('#user_birthday_3i').val(date_tomorrow_day);
        $('#user_color').val(User.color);
        $('#user_color_blue').prop('checked', true);
        $('#user_fruit').val(User.fruit[0]);
        $('#user_fruit_cherry, #user_fruit_lime, #user_fruit_mango').prop('checked', true);
        $('#user_music').val(User.music[0]);
        $('#user_language').val(User.language);
        $('#user_pill').val(User.pill);
        $('#user_pill_red').prop('checked', User.pill);
        $('#user_active').prop('checked', User.active);
        $('#user_choices').val(User.choices[0]);
        $('#user_choices_b, #user_choices_d').prop('checked', true);
        $('#user_friends').val(User.friends);
        $('#user_mood').val(User.mood);
        $('#user_awake').val(User.awake[0]);
        $('#user_awake_4i').val(User.awake[0]);
        $('#user_awake_5i').val(User.awake[1]);
        $('#user_first_kiss').val(User.first_kiss[0]);
        $('#user_first_kiss_4i').val(User.first_kiss[0]);
        $('#user_first_kiss_5i').val(User.first_kiss[1]);
        $('#user_active').val(User.active);
        $('#user_active_true').prop('checked', true);
        $('#user_terms').prop('checked', User.terms);
    });
});