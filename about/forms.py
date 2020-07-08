from django import forms
from about.models import contact

class ContactModel(forms.ModelForm):
    full_name = forms.CharField(max_length=120,widget=forms.TextInput(
        attrs={
            'class':'form-control full_name',
            'id':'full_name',
            'placeholder':'Enter Your Full Name',
        }
    ))
    email = forms.CharField(max_length=120,widget=forms.EmailInput(
        attrs={
            'class':'form-control email',
            'id':'email',
            'placeholder':'Enter Your Email',
        }
    ))
    
    class Meta:
        model = contact
        fields = ['full_name','email']