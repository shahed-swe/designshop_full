from django.contrib import admin
from .models import Main,overlayLink,about
# Register your models here.
admin.site.register(Main)
admin.site.register(overlayLink)
admin.site.register(about)