// for essential package
const new_button = document.getElementById("show_bill");
new_button.addEventListener('click', function() {
        const get_main = document.getElementById("change_data").innerText;
        if (get_main == "Yearly") {
            const price = document.getElementById('change_price').innerText;
            document.getElementById('change_price').innerText = parseInt(price * 12);
            document.getElementById('change_div').innerText = "Yearly";
            document.getElementById('change_data').innerText = "Monthly";
        } else if (get_main == "Monthly") {
            const price = document.getElementById('change_price').innerText;
            document.getElementById('change_price').innerText = parseInt(price / 12);
            document.getElementById('change_div').innerText = "Monthly";
            document.getElementById('change_data').innerText = "Yearly";
        }
    })
    // for professional package
const new_button2 = document.getElementById("show_bill2");
new_button2.addEventListener('click', function() {
        const get_main = document.getElementById("change_data2").innerText;
        if (get_main == "Yearly") {
            const price = document.getElementById('change_price2').innerText;
            document.getElementById('change_price2').innerText = parseInt(price * 12);
            document.getElementById('change_div2').innerText = "Yearly";
            document.getElementById('change_data2').innerText = "Monthly";
        } else if (get_main == "Monthly") {
            const price = document.getElementById('change_price2').innerText;
            document.getElementById('change_price2').innerText = parseInt(price / 12);
            document.getElementById('change_div2').innerText = "Monthly";
            document.getElementById('change_data2').innerText = "Yearly";
        }
    })
    // for premium package
const new_button3 = document.getElementById("show_bill3");
new_button3.addEventListener('click', function() {
    const get_main = document.getElementById("change_data3").innerText;
    if (get_main == "Yearly") {
        const price = document.getElementById('change_price3').innerText;
        document.getElementById('change_price3').innerText = parseInt(price * 12);
        document.getElementById('change_div3').innerText = "Yearly";
        document.getElementById('change_data3').innerText = "Monthly";
    } else if (get_main == "Monthly") {
        const price = document.getElementById('change_price3').innerText;
        document.getElementById('change_price3').innerText = parseInt(price / 12);
        document.getElementById('change_div3').innerText = "Monthly";
        document.getElementById('change_data3').innerText = "Yearly";
    }
})