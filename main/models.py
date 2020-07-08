from __future__ import unicode_literals
from django.db import models

# Create your models here.
class Main(models.Model):
    name = models.SlugField(max_length=20)
    instagram = models.CharField(max_length = 100, null = True)
    facebook = models.CharField(max_length = 100, null = True)
    google_plus = models.CharField(max_length = 100, null = True)
    pinterest = models.CharField(max_length = 100, null = True)
    twitter = models.CharField(max_length = 100, null = True)
    youtube = models.CharField(max_length = 100, null = True)
    tumbler = models.CharField(max_length = 100, null = True)

    class Meta:
        db_table = 'social-links'

    def __str__(self):
        return self.name+" | "+str(self.pk)

class overlayLink(models.Model):
    name = models.SlugField(max_length=20)
    link = models.URLField(max_length=200, null=True)

    class Meta:
        db_table = 'overlay-links'
    
    def __str__(self):
        return self.name +" | "+str(self.pk)

class about(models.Model):
    name = models.SlugField(max_length=20)
    about = models.TextField(max_length=400, null=True)

    class Meta:
        db_table = 'about'

    def __str__(self):
        return self.name +" | "+str(self.pk)

