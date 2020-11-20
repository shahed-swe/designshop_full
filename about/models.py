from django.db import models

# Create your models here.
class contact(models.Model):
    full_name = models.CharField(max_length=120,null=True,blank=True)
    email = models.CharField(max_length=120,null=True,blank=True)
    subject = models.CharField(max_length=120,null=True, blank=True)
    description = models.CharField(max_length=500, null=True, blank=True)

    class Meta:
        db_table = 'contact'
    
    def __str__(self):
        return self.full_name +' | '+str(self.pk)