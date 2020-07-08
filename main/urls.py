from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.home, name = 'home'),
    url(r'^login/$',views.mylogin, name="mylogin"),
    url(r'^register/$',views.myregister, name="myregister"),
    url(r'^logout/$',views.mylogout,name="mylogout"),
]