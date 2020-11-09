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

class customForm(models.Model):
    user = models.CharField(max_length=120, blank=True, null=True)
    email = models.CharField(max_length=120, blank=True, null=True)
    idea_category = models.CharField(max_length=120, blank=True, null=True)
    idea_description = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        db_table = 'custom'
    
    def __str__(self):
        return self.idea_category + ' | '+str(self.pk)