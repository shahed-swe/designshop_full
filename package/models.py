from __future__ import unicode_literals
from django.db import models

# Create your models here.
class package(models.Model):
    pack_name = models.SlugField(max_length=20, null=True, choices=[(
        'Essential', 'Essential'), ('Professional', 'Professional'), ('Premium', 'Premium')])
    price_monthly = models.IntegerField(null=True)
    price_yearly = models.IntegerField(null=True)
    discount_rate = models.IntegerField(null=True)
    pack_sec_one = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_two = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_three = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_four = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_five = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_six = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_seven = models.CharField(max_length=120, null=True, blank=True)
    pack_sec_eight = models.CharField(max_length=120, null=True, blank=True)

    class Meta:
        db_table = 'packages'

    def __str__(self):
        return self.pack_name + ' | '+str(self.pk)