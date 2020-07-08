from django.shortcuts import render,get_object_or_404,redirect
from django.http import JsonResponse
from main.models import Main,overlayLink,about
from .models import package
from store.models import *
# Create your views here.
def package_system(request):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    pack = package.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
    else:
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    return render(request, 'front/package.html', {"title": "Package", "social": social_link, "about": abt, "overlay": over_link ,"package":pack,'order':order})
