from django import forms
from .models import store
from categories.models import Category
class addproductForm(forms.ModelForm):
    slug = forms.CharField(max_length=120, widget=forms.TextInput(
        attrs = {
            'class':'form-control',
            'id':'slug',
            'placeholder':'Product Slug'
        }
    ))
    title = forms.CharField(max_length=120, widget=forms.TextInput(
        attrs={
            'class':'form-control',
            'id':'title',
            'placeholder':'Product Title',
        }
    ))
    price = forms.IntegerField(widget=forms.NumberInput(
        attrs={
            'class':'form-control',
            'id':'price',
        }
    ))
    img_one = forms.ImageField(widget=forms.FileInput(
        attrs={
            'class':'form-control',
            'id':'image_one'
        }
    ))
    img_two = forms.ImageField(widget=forms.FileInput(
        attrs={
            'class':'form-control',
            'id':'image_two'
        }
    ))
    img_three = forms.ImageField(widget=forms.FileInput(
        attrs={
            'class':'form-control',
            'id':'image_three'
        }
    ))
    product_file = forms.FileField(widget=forms.FileInput(
        attrs = {
            'class':'form-control',
            'id':'product_file'
        }
    ))
    product_description = forms.CharField(widget=forms.Textarea(
        attrs={
            'class':'form-control',
            'id':'description',
            'row':'50',
            'col':'5',
        }
    ))
    class Meta:
        model = store
        fields = '__all__'