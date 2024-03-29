from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms
from django.core.validators import validate_email

class CreateUserForm(UserCreationForm):
    username = forms.CharField(max_length=120,widget=forms.TextInput(
        attrs = {
            'class':'form-control',
            'id':'user_field',
            'placeholder': 'Enter Your Username',
        }
    ))
    first_name = forms.CharField(max_length=120,widget=forms.TextInput(
        attrs = {
            'class':'form-control',
            'id':'first_name',
            'placeholder': 'Enter Your First Name',
        }
    ))
    last_name = forms.CharField(max_length=120,widget=forms.TextInput(
        attrs = {
            'class':'form-control',
            'id':'last_name',
            'placeholder': 'Enter Your Last Name',
        }
    ))
    
    email = forms.CharField(max_length=120,widget=forms.EmailInput(
        attrs = {
            'class':'form-control',
            'id':'email_field',
            'placeholder':'Enter Your Email'
        }
    ))
    password1 = forms.CharField(max_length=12,widget=forms.PasswordInput(
        attrs={
            'class':'form-control',
            'id':'password_field_one',
            'placeholder':'Enter Password First',
        }
    ))
    password2 = forms.CharField(max_length=12,widget=forms.PasswordInput(
        attrs={
            'class':'form-control',
            'id':'password_field_two',
            'placeholder':'Enter Password Again',
        }
    ))
    class Meta:
        model = User
        fields = ['username','first_name','last_name','email','password1','password2']

    def check_duplicate_user_name(self, *args, **kwargs):
        instance = self.instance
        username = self.cleaned_data.get('username')
        check = User.objects.filter(username__iexact=username)
        if instance is not None:
            check = check.exclude(pk=instance.pk)
        if check.exists():
            raise forms.ValidationError("User is already exists")
        return username

    def email_validation_check(self, *args,**kwargs):
        email = self.cleaned_data.get('email')
        data = validate_email(email)
        if data != True:
            raise forms.ValidationError("Enter corrent email address")
        return email
    
    def password_validation_check(self, *args, **kwargs):
        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')
        if password1 != password2:
            raise forms.ValidationError("Password Does not match")
        return password1