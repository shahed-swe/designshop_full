from django.conf.urls import url
from django.urls import path
from . import views
from django.contrib.auth import views as auth_views
urlpatterns = [
    url(r'^$', views.home, name = 'home'),
    url(r'^login/$',views.mylogin, name="mylogin"),
    url(r'^register/$',views.myregister, name="myregister"),
    url(r'^logout/$',views.mylogout,name="mylogout"),
    url(r'^terms/$', views.terms_and_conditions, name="terms_and_conditions"),
    url(r'^privacy/$', views.privacy_policy, name="privacy_policy"),
    url(r'^custom/$', views.custom_idea, name="custom_idea"),
    # sometime path routing works fine
    path('reset_password/', auth_views.PasswordResetView.as_view(template_name="front/password_reset.html"), name="reset_password"),
    path('reset_password_sent/',auth_views.PasswordResetDoneView.as_view(template_name="front/password_sent.html"), name="password_reset_done"),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name="front/password_reset_form.html"), name="password_reset_confirm"),
    path('reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(template_name="front/password_reset_done.html"), name="password_reset_complete"),
]
