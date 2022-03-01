from django import forms
# from django.forms import ValidationError
from django.core.exceptions import ValidationError
from .models import www_users

class www_usersform(forms.ModelForm):
    class Meta(forms.ModelForm):
        model = www_users
        fields = "__all__"
        widgets = {
                   'password': forms.PasswordInput()
        }

    # def clean_accountgroupname(self):
    #     cleaned_data = super(AccountGroupsForm, self).clean()
    #     accountgroupname = cleaned_data.get('accountgroupname')
    #
    #     match = agm.objects.filter(accountgroupname=accountgroupname)
    #     if match.exists():
    #         msg = "Account Group Name already exists!"
    #         raise ValidationError(msg)
    #     else:
    #         return accountgroupname
    #
    # def clean_sequenceinfs(self):
    #     cleaned_data = super(AccountGroupsForm, self).clean()
    #     sequenceinfs = cleaned_data.get('sequenceinfs')
    #
    #     match = agm.objects.filter(sequenceinfs=sequenceinfs)
    #     print(self.cleaned_data)
    #     if match.exists():
    #         msg = "Similar account with sequence/order already exists!"
    #         raise ValidationError(msg)
    #     else:
    #         return sequenceinfs
