# Generated by Django 3.1.3 on 2020-11-20 14:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('about', '0002_auto_20201120_1711'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contact',
            name='description',
            field=models.TextField(blank=True, max_length=500, null=True),
        ),
    ]
