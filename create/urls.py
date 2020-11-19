from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    url(r'^custom/$', views.custom, name="custom"),
]