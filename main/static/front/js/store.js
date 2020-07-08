// laoding more seciton
$('.product-filter-section .new-card').slice(0, 9).show();
$('#btnMore').on('click', function() {
    $('.product-filter-section .new-card:hidden').slice(0, 3).slideDown();
    if ($('.product-filter-section .new-card').length == 0) {
        ('#btnMore').fadeOut();
    }
})

// searching angorithm
function Result() {
    event.preventDefault();
    var msg = $('#search').val();
    var data = msg.toLowerCase();
    if (data) {
        $("#products #myTable").filter(function() {

            $(this).toggle($(this).text().toLowerCase().indexOf(data) > -1)
        });
    } else {
        $('.product-filter-section .new-card').css('display', 'none');
        $('.product-filter-section .new-card').slice(0, 9).show();
    }

}

// category descending order
$(document).ready(function() {
    $.getJSON("/category", function(result) {
        // $('#all_cat div').append('<li><a id="all" href="#">' + i + '</a><span class="float-right">' + field + '</span></li>');
        $.each(result, function(i, field) {
            $('#all_cat form').append('<li><a id="all' + i + '" class="all" href="#">' + i + '</a><span class="float-right">' + field + '</span></li>');
        })
    })
});
$(document).ready(function() {
    $(".navigate_cat").on('click', 'li', function() {
        event.preventDefault();
        var text = $(this).text();
        var data = naturalSplit(text);
        if (data[0] == "All Products") {
            document.getElementById('res-val').innerText = data[1]
            $('.product-filter-section .new-card').css('display', 'none');
            $('.product-filter-section .new-card').slice(0, 9).show();
        } else {
            $("#result-show").css('display', '');
            document.getElementById('res-val').innerText = data[1]
            $("#products #myTable").filter(function() {
                var new_text = data[0].toLowerCase();
                $(this).toggle($(this).text().toLowerCase().indexOf(new_text) > -1);
            })

        }
    });
});

function naturalSplit(str) {
    'use strict';
    let arr = [];
    let split = str.split(/(\d+)/);
    for (let i in split) {
        let s = split[i];
        if (s !== "") {
            if (i % 2) {
                arr.push(+s);
            } else {
                arr.push(s);
            }
        }
    }
    return arr;
}
// get main result section within category
// $(document).ready(function() {
//     $(".navigate_cat").on('click', 'li a', function() {
//         event.preventDefault();
//         var text = $(this).text();
//         // console.log(text)
//         if (text != "All Products") {
//             $("#result-show").css('display', '');
//             console.log(text);
//             $.ajax({
//                 type: 'POST',
//                 url: 'collection/',
//                 data: {
//                     'text': text,
//                     csrfmiddlewaretoken: csrftoken,
//                 },
//                 dataType: 'json',
//                 success: function(data) {
//                     document.getElementById('res-val').innerText = data[10].toString();
//                     if (data) {
//                         var data_new = text.toLowerCase();
//                         // console.log(data);
//                         $("#products #myTable").filter(function() {
//                             // console.log($(this))
//                             $(this).toggle($(this).text().toLowerCase().indexOf(data_new) > -1);


//                         });
//                     } else {
//                         $('.product-filter-section .new-card').css('display', 'none');
//                         $('.product-filter-section .new-card').slice(0, 9).show();

//                     }
//                 },
//             });
//         } else {
//             $('.product-filter-section .new-card').css('display', 'none');
//             $('.product-filter-section .new-card').slice(0, 9).show();
//             $("#result-show").css('display', 'none');
//         }

//     })
// });