# Generated by Django 3.1.3 on 2020-11-20 11:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('about', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='contact',
            name='description',
            field=models.CharField(blank=True, max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='contact',
            name='subject',
            field=models.CharField(blank=True, max_length=120, null=True),
        ),
    ]
