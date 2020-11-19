from django.db import models
from categories.models import Category
# Create your models here.
class Custom(models.Model):
    design_type = [
        ('Pictorial','Pictorial'),
        ('Symbolic','Symbolic'),
        ('Text Based','Text Based')
    ]

    style_type = [
        ('Material Design','Material Design'),
        ('Fency','Fency'),
        ('Artistic','Artistic'),
        ('Modern','Modern'),
        ('Standard','Standard'),
        ('Professional','Professional'),
        ('Fency','Fency'),
        ('Cartoonish','Cartoonish')
    ]

    user_id = models.CharField(max_length=120,blank=True,null=True)
    categories = models.CharField(max_length=120, blank=True, null=True)
    types = models.CharField(null=True, max_length=20, choices=design_type)
    color_preference = models.CharField(max_length=220, blank=True, null=True)
    style = models.CharField(null=True, max_length=40, choices=style_type)
    description = models.TextField(max_length=1000, blank=True, null=True, default="_")

    class Meta:
        db_table = "custom_design"

    def __str__(self):
        return str(self.user_id) + " | " + self.categories + " | "+str(self.pk)
