$(document).ready(function() {
    $('.all').css('display', 'none');
    $('.bd').css('display', 'none');

    $("select#select-source").change(function() {
        var selectedCountry = $(this).children("option:selected").val();
        if (selectedCountry) {
            if (selectedCountry == "bd") {
                $('.bd').css('display', '')
                $('.all').css('display', 'none')
            } else {
                $('.bd').css('display', 'none')
                $('.all').css('display', '')
            }
        }
    });
    $("#bkash").on('click', function() {
        alert("Thanks for purchas with bkash");
    })
    $("#rocket").on('click', function() {
        alert("Thanks for purchas with rocket");
    })
    $("#check2out").on('click', function() {
        $(".2checkout-pay").css('display', '');
    })
});