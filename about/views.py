from django.shortcuts import render,get_object_or_404,redirect
from django.http import JsonResponse
from main.models import Main,overlayLink,about
from about.forms import ContactModel
from store.models import *
# Create your views here.
def about_page(request):
    if request.method == 'POST':
        contact = ContactModel(request.POST)
        if contact.is_valid():
            try:
                name = contact.cleaned_data['full_name']
                email = contact.cleaned_data['email']
                print(name,email)
                contact.save()
                return redirect('/about/')
            except:
                pass
    else:
        contact = ContactModel()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
    else:
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    return render(request, 'front/about.html',{"title":"About",'social':social_link,'about':abt,'overlay':over_link,'form':contact,'order':order})

