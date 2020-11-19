from django.forms import ModelForm
from django import forms
from .models import Custom

class CustomForm(forms.ModelForm):
    design_type = [
        ('Pictorial', 'Pictorial'),
        ('Symbolic', 'Symbolic'),
        ('Text Based', 'Text Based')
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
    categories = forms.CharField(max_length=120, widget=forms.TextInput(
        attrs={
            'class':'form-control',
            'id':'categories_field',
            'placeholder':'Which category based design you want to build',
        }
    ))

    types = forms.CharField(max_length=20, widget=forms.Select(
        attrs={
            'class':'form-control',
            'id':'select_field',
        },
        choices=design_type
    ))

    color_preference = forms.CharField(max_length=220, widget=forms.TextInput(
        attrs={
            'class':'form-control',
            'id':'prefer-color',
            'placeholder':'Suggest some colors for your design',
        }
    ))

    style = forms.CharField(max_length=40, widget=forms.Select(
        attrs={
            'class':'form-control',
            'id':'style-field',
        },
        choices=style_type
    ))
    description = forms.CharField(max_length=1000, widget=forms.Textarea(
        attrs={
            'class':'form-control',
            'id':'description',
            'placeholder':'Describe your design here please',
            'rows':'5',
            'cols':'20',
        }
    ))

    class Meta:
        model = Custom
        fields = ['categories','types','color_preference','style','description']
