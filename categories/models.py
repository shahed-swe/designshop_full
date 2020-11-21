from __future__ import unicode_literals
from django.db import models

# Create your models here.


class Category(models.Model):
    category = models.CharField(max_length=20, null=True, blank=False)

    class Meta:
        db_table = 'prod_category'

    def __str__(self):
        return self.category
