from __future__ import unicode_literals
from django.db import models
from categories.models import Category
from django.contrib.auth.models import User
# Create your models here.

class store(models.Model):
    ck = Category.objects.all()
    categories = []
    for i in ck:
        categories.append((i.category,i.category))
    slug = models.SlugField(max_length=120,null=True,blank=False)
    title = models.CharField(max_length=120, null=True)
    category = models.CharField(max_length=120,null=True,choices=categories)
    price = models.IntegerField(null=True, default=0)
    img_one = models.ImageField(upload_to='product/image/', null=True)
    img_two = models.ImageField(upload_to='product/image/',null=True)
    img_three = models.ImageField(upload_to='product/image/',null=True)
    product_file = models.FileField(upload_to='new_file/', null=True,blank=True)
    product_description = models.TextField(null=True, blank=True)
    
    class Meta:
        db_table = 'product_details'

    def __str__(self):
        return self.title +' | '+self.category+' | '+str(self.pk)


class Customer(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True, blank=True)
    name = models.CharField(max_length=200, null=True)
    email = models.CharField(max_length=200, null=True)

    def __str__(self):
        return self.name

class Order(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.SET_NULL,blank=True,null=True)
    date_ordered = models.DateTimeField(auto_now_add=True)
    complete = models.BooleanField(default=False,null=True)
    transaction_id = models.CharField(max_length=200,null=True)

    def __str__(self):
        return str(self.id)
    

    @property
    def get_cart_total(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.get_total for item in orderitems])
        return total

    @property
    def get_cart_items(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.quantity for item in orderitems])
        return total

    # @property
    # def shipping(self):
    #     shipping = False
    #     orderitems = self.orderitem_set.all()
    #     for i  in orderitems:
    #         if i.product.digital == False:
    #             shipping = True
    #     return shipping
    

class OrderItem(models.Model):
    product = models.ForeignKey(store, on_delete=models.SET_NULL, blank=True, null=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, blank=True, null=True)
    quantity = models.IntegerField(default=0,null=True,blank=True)
    data_added = models.DateTimeField(auto_now_add=True)

    @property
    def get_total(self):
        total = self.product.price * self.quantity
        return total

class ShippingAddress(models.Model):
    customer = models.ForeignKey(Customer, on_delete=models.SET_NULL,blank=True, null=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL,blank=True, null=True)
    address = models.CharField(max_length=200, null=True)
    city = models.CharField(max_length=200, null=True)
    state = models.CharField(max_length=200, null=True)
    zipcode = models.CharField(max_length=200, null=True)
    date_added = models.CharField(max_length=200, null=True)

    def __str__(self):
        return self.address

