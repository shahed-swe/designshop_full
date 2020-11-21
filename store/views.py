from django.shortcuts import render, get_object_or_404, redirect
from django.http import JsonResponse
from main.models import Main, overlayLink, about
from store.models import *
from categories.models import Category
from django.db import connection
import random
from django.contrib.auth.models import User
import json
import twocheckout
from twocheckout import TwocheckoutError
# from django.core.context_processors import csrf
# Create your views here.

# for store package
def store_package(request):
    # val = request.POST.get('msg')
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    # prod = store.objects.all()
    prod = store.objects.all()
    if len(prod) > 0:
        num = random.randint(1,len(prod))
    else:
        num = 0
    cat = Category.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    context = {"title": "Store", "social": social_link, "about": abt,
               "overlay": over_link, "product": prod,"categories":cat, "number_prod":str(len(prod)),"number":num,'order':order}
    return render(request, 'front/store.html',context)

def product_details(request,slug):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    # prod = store.objects.all()
    prod = store.objects.all()
    num = random.randint(1, len(prod))
    cat = Category.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(
            customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    product_dat = store.objects.filter(slug=slug)
    context = {"title": "Store", "social": social_link, "about": abt,
               "overlay": over_link, "product": product_dat, "categories": cat, "number_prod": str(len(prod)), "number": num, 'order': order}
    return render(request, 'front/details.html', context)

# for countring the category
def category_count(request):
    ck = Category.objects.all()
    list1 = {}
    for i in ck:
        list1.update({i.category: counting(i.id)})

    new_list = list(list1.values())
    new_list.sort(reverse=True)
    another_dict = {}
    for i in new_list:
        for j,k in list1.items():
            if k == i:
                another_dict.update({j:k})
    # print(another_dict)
    return JsonResponse(another_dict, safe=False)

# for getting category data
def get_category_data(request):
    text = request.POST.get('text')
    print(text)
    data = my_custom_sql(text)
    # query data
    count = counting(text)
    # counting data
    prod = len(store.objects.all())  # counting how many products are there
    data = list(data)
    data.append(prod)
    data.append(count)
    print(data)
    return JsonResponse(data, safe=False)
    # return render(request, 'front/store.html', {'data':data})

def counting(val):
    count = store.objects.filter(category=val)
    return len(count)
    
def my_custom_sql(query):
    with connection.cursor() as cursor:
        cursor.execute("select * from product_details where category = %s", [query])
        row = cursor.fetchone()
    return row

# cart section
def cart(request):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order,created = Order.objects.get_or_create(customer=customer,complete=False)
        items = order.orderitem_set.all()
    else:
        items = []
        order = {'get_cart_items':0,'get_cart_total':0}
    context = {"title": "Store", "social": social_link, "about": abt,
               "overlay": over_link,'items':items,'order':order}
    return render(request,'front/cart.html',context)


def updateItem(request):
    data = json.loads(request.body)
    productId = data['productId']
    action = data['action']
    # print(productId)
    # print(action)
    customer = request.user.customer
    product = store.objects.get(id=productId)
    order, created = Order.objects.get_or_create(customer=customer, complete=False)

    orderItem,created = OrderItem.objects.get_or_create(order=order, product=product)
    if action == 'add':
        orderItem.quantity = (orderItem.quantity + 1)
        if orderItem.quantity > 0 and orderItem.quantity <= 1:
            orderItem.save()
            response = "Item has been added"
        else:
            response = "Already in your cart"
    elif action == 'remove':
        orderItem.delete()
        response = "Item has deleted successfully"

    return JsonResponse(response, safe=False)



# checkout section
def checkout(request):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    # Setup credentials and environment

    if not request.user.is_authenticated:
        return redirect('/login/')
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    context = {"title": "Store", "social": social_link, "about": abt,"overlay": over_link,'items': items, 'order': order}
    return render(request,'front/checkout.html',context)


def checkout_submit(request):
    if not request.user.is_authenticated:
        return redirect('/login/')
    print(request.POST['all_item'])
    twocheckout.Api.auth_credentials({
        'private_key': '6351F9E3-A894-4BA0-88AC-CB25D3D3BB4B',
        'seller_id': '250407438565'
    })
    params = {
        'merchantOrderId': '1',
        'token': request.POST['token'],
        'currency': 'USD',
        'total': request.POST['total-value'],
        'billingAddr': {
            'name': request.POST['card-holder'],
            'card': request.POST['card-number'],
            'expmonth': request.POST['month'],
            'expYear': request.POST['year'],
            'addrLine1': request.POST['address'],
            'city': request.POST['city'],
            'state': request.POST['state'],
            'zipCode': request.POST['zip'],
            'country': request.POST['country'],
            'email': request.POST['email'],
            'phoneNumber': request.POST['phone'],
        }
    }
    # return JsonResponse(params, safe=False)
    try:
        result = twocheckout.Charge.authorize(params)
        return JsonResponse(result.responseCode, safe=False)
    except TwocheckoutError as error:
        return JsonResponse(error.msg, safe=False)
