from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^about/$',views.about_page,name = 'about_page'),
]