from django.shortcuts import render,get_object_or_404,redirect
from django.http import JsonResponse
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from store.models import *
# get_object_or_404 --> to raise the error if not found
# redirect() --> used to redirect our web page
from .models import Main,overlayLink,about
from .forms import CreateUserForm
# Create your views here.

def home(request):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
    else:
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    return render(request, 'front/home.html', {"title": "Home", "social": social_link, "overlay": over_link, "about": abt, "range": range(8), 'order': order})

def mylogin(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        utxt = request.POST.get('username')
        upass = request.POST.get('password')
        print(utxt,upass)
        if utxt != "" and upass != "":
            user = authenticate(username=utxt, password=upass)
            if user != None:
                login(request, user)
                return redirect('/')
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    context = {"title": "Home",
               "social": social_link, "overlay": over_link, "about": abt}
    return render(request, 'front/login.html',context)

def myregister(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == "POST":
        uname = request.POST.get('username')
        f_name = request.POST.get('first_name')
        l_name = request.POST.get('last_name')
        full_name = f_name + ' ' + l_name
        email = request.POST.get('email')
        password = request.POST.get('password1')
        user = User.objects.create_user(username=uname,first_name=f_name,last_name=l_name,email=email,password=password)
        customer = Customer(user=user,name=full_name,email=email)
        customer.save()
        return redirect('/login')
    form = CreateUserForm()

    context = {"title":"Register",'form':form}
    return render(request, 'front/registration.html',context)

def mylogout(request):
    logout(request)
    return redirect('/')


def terms_and_conditions(request):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(
            customer=customer, complete=False)
    else:
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    return render(request, 'front/terms_and_condition.html', {"title": "Home", "social": social_link, "overlay": over_link, "about": abt, "range": range(8), 'order': order})


def privacy_policy(request):
    social_link = Main.objects.all()
    over_link = overlayLink.objects.all()
    abt = about.objects.all()
    if request.user.is_authenticated and not request.user.is_staff:
        customer = request.user.customer
        order, created = Order.objects.get_or_create(
            customer=customer, complete=False)
    else:
        order = {'get_cart_items': 0, 'get_cart_total': 0}
    return render(request, 'front/privacy_policy.html', {"title": "Home", "social": social_link, "overlay": over_link, "about": abt, "range": range(8), 'order': order})


