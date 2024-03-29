# Generated by Django 3.1.3 on 2020-11-19 13:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('categories', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='custom',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_id', models.CharField(blank=True, max_length=120, null=True)),
                ('types', models.CharField(choices=[('Pictorial', 'Pictorial'), ('Symbolic', 'Symbolic'), ('Text Based', 'Text Based')], max_length=20, null=True)),
                ('color_preference', models.CharField(blank=True, max_length=220, null=True)),
                ('style', models.CharField(choices=[('Material Design', 'Material Design'), ('Fency', 'Fency'), ('Artistic', 'Artistic'), ('Modern', 'Modern'), ('Standard', 'Standard'), ('Professional', 'Professional'), ('Fency', 'Fency'), ('Cartoonish', 'Cartoonish')], max_length=40, null=True)),
                ('description', models.CharField(blank=True, max_length=1000, null=True)),
                ('categories', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='categories.category')),
            ],
            options={
                'db_table': 'custom_design',
            },
        ),
    ]
