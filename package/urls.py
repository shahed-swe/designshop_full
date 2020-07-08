from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^package/$', views.package_system, name = 'package'),
]