
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^store/$', views.store_package, name='store_package'),
    url(r'^store/(?P<slug>.*)/$', views.product_details, name='product_details'),
    url(r'^category/$',views.category_count, name='category_count'),
    # url(r'^collection/$', views.get_category_data, name='get_category_data'),
    url(r'^cart/$',views.cart,name="cart"),
    url(r'^update_item/$',views.updateItem,name='updateItem'),
    url(r'^checkout/$',views.checkout, name="checkout"),
    url(r'^checkout-submit/$',views.checkout_submit, name="checkout_submit"),
]
