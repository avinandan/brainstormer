$(function () {
    $("label.error").hide();

var paraTag = $('input#submit').parent('button');
$(paraTag).children('input').remove();
$(paraTag).append('<input type="button" name="submit" id="submit" value="Send" />');

    $('#subscribe button#submit').click(function () {
        $('#subscribe').append('<img src="images/ajax-loader.gif" class="loaderIcon" alt="Loading..." />');

        var fname = $('input#fname').val();
        var lname = $('input#lname').val();
        var email1 = $('input#email1').val();

        if (email1 == "" || email1 == "Email*") {

            $('#subscribe img.loaderIcon').fadeOut(1000);
            $("label#email_error").show();
            $('input#email1').focus(function () {
                $('input#email1').css('border', '1px solid red');
            });
            return false;
        }
        if (fname == "" || fname == "First Name*") {

           $('#subscribe img.loaderIcon').fadeOut(1000);
           $("label#fname_error").show();
            $('input#fname').focus(function () {
                $('input#fname').css('border', '1px solid red');
            });
            return false;
        }
        if (lname == "" || lname == "Last Name*") {

            $('#subscribe img.loaderIcon').fadeOut(1000);
            $("label#lname_error").show();
            $('input#lname').focus(function () {
                $('input#lname').css('border', '1px solid red');
            });
            return false;
        }
        
      
        $.ajax({
            type: 'post',
            url: '../contact_form/subscribe1.php',
            data: '&fname=' + fname + '&lname=' + lname + '&email1=' + email1,
         
            success: function (results) {
                $('#subscribe img.loaderIcon').fadeOut(1000);
                $('ul#response').html(results);
                //$('#subscribe').html("<div id='message'></div>");
                //$('#layerslider').html("<h2></h2>").append("<p style='font-style: 16px;'>Thank You For Subscribing!!!</div>");

            }
        }); 
    });
});
//$(function () {
//    $("label.error").hide();

//    // These first three lines of code compensate for Javascript being turned on and off. 
//    // It simply changes the submit input field from a type of "submit" to a type of "button".

//    var paraTag = $('input#submit').parent('p');
//    $(paraTag).children('input').remove();
//    $(paraTag).append('<input type="button" name="submit" id="submit" value="Send" />');



//    $('#main2 input#submit').click(function () {
//        $('#main2').append('<img src="images/ajax-loader.gif" class="loaderIcon" alt="Loading..." />');

//        var name = $('input#name').val();
//        var lname = $('input#lname').val();
//        var email = $('input#email').val();
//        var company = $('input#company').val();
//        var comments = $('textarea#comments').val();
//        if (name == "") {

//            $('#main2 img.loaderIcon').fadeOut(1000);
//            $("label#name_error").show();
//            $('input#name').focus(function () {
//                $('input#name').css('border', '1px solid red');
//            });
//            return false;
//        }

//        if (lname == "") {

//            $('#main2 img.loaderIcon').fadeOut(1000);
//            $("label#lname_error").show();
//            $('input#lname').focus(function () {
//                $('input#lname').css('border', '1px solid red');
//            });
//            return false;
//        }
//        if (email == "") {

//            $('#main2 img.loaderIcon').fadeOut(1000);
//            $("label#email_error").show();
//            $('input#email').focus(function () {
//                $('input#email').css('border', '1px solid red');
//            });
//            return false;
//        }
//        if (company == "") {

//            $('#main2 img.loaderIcon').fadeOut(1000);
//            $("label#company_error").show();
//            $('input#company').focus(function () {
//                $('input#company').css('border', '1px solid red');
//            });
//            return false;
//        }
//        if (comments == "") {

//            $('#main2 img.loaderIcon').fadeOut(1000);
//            $("label#comment_error").show();
//            $('input#comment').focus(function () {
//                $('input#comment').css('border', '1px solid red');
//            });
//            return false;
//        }
//        $.ajax({
//            type: 'post',
//            url: '../contact_form/sendEmail.php',
//            data: 'name=' + name + '&email=' + email + '&company' + company + '&comments=' + comments,

//            success: function (results) {
//                $('#main2 img.loaderIcon').fadeOut(1000);
//                $('ul#response').html(results);
//                $('#container1').html("<div id='message'></div>");
//                $('#message').html("<h2>Contact Form Submitted!</h2>").append("<div class='box check light_shadow'>We will be in touch soon.</div>");

//            }
//        }); 
//    });
//});
