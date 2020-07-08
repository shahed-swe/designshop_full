var updatebtn = document.getElementsByClassName('update-cart')


for (let i = 0; i < updatebtn.length; i++) {
    updatebtn[i].addEventListener('click', function() {
        event.preventDefault();
        var prodId = this.dataset.product;
        var action = this.dataset.action;
        // console.log('prodId', prodId, 'action', action);
        // console.log('user', user, 'status', status);
        if (user == "AnonymousUser") {
            // console.log('Not Logged In');
        } else if (status == "True") {
            // console.log("Admin Can't add product to cart");
        } else {

            updateUserOrder(prodId, action);
            $.toaster({
                message: 'Item has been Added',
                title: 'Hello' + ' ' + user,
                priority: 'success'
            });
        }
    })
}



function updateUserOrder(productId, action) {
    var url = '/update_item/';
    fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRFToken': csrftoken,
            },
            body: JSON.stringify({
                'productId': productId,
                'action': action
            })
        })
        .then((response) => {
            return response.json()
        })
        .then((data) => {
            location.reload();
        })
}