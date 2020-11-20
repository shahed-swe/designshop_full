from django.shortcuts import render,redirect
from main.models import *
from .forms import CustomForm
from .models import Custom
from django.db import IntegrityError
# Create your views here.
def custom(request):
    if not request.user.is_authenticated:
        try:
            return redirect('/login')
        except ValueError as e:
            print(e)
    else:
        social_link = Main.objects.all()
        over_link = overlayLink.objects.all()
        abt = about.objects.all()
        if request.method == "POST":
            try:
                categories = request.POST['categories']
                types = request.POST['types']
                color = request.POST['color_preference']
                style = request.POST['style']
                description = request.POST['description']
                create = Custom(user_id=request.user, categories=categories, types=types, color_preference=color, style=style, description=description)
                create.save()
                print(request.user.email)
                redirect('/custom')
            except IntegrityError as e:
                social_link = Main.objects.all()
                over_link = overlayLink.objects.all()
                abt = about.objects.all()
                context = {"title": "Home",
                        "social": social_link, "overlay": over_link, "about": abt, "error": "Your Given Data is not correct"}
                return render(request, 'front/error.html', context)
        form = CustomForm()
        context = {"title": "Custom Design",
                "social": social_link, "overlay": over_link, "about": abt,'form':form}
        return render(request, 'create/customform.html', context)
